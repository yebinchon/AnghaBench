
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {long stages; int** decodemap; int *** partbooks; TYPE_4__* phrasebook; TYPE_2__* info; } ;
typedef TYPE_1__ vorbis_look_residue0 ;
typedef int vorbis_look_residue ;
struct TYPE_8__ {int grouping; int end; int begin; int* secondstages; } ;
typedef TYPE_2__ vorbis_info_residue0 ;
struct TYPE_9__ {int pcmend; int opb; } ;
typedef TYPE_3__ vorbis_block ;
typedef int ogg_int32_t ;
typedef int codebook ;
struct TYPE_10__ {int dim; } ;


 scalar_t__ _vorbis_block_alloc (TYPE_3__*,int) ;
 int vorbis_book_decode (TYPE_4__*,int *) ;
 int vorbis_book_decodevv_add (int *,int **,long,int,int *,int,int) ;

int res2_inverse(vorbis_block *vb,vorbis_look_residue *vl,
   ogg_int32_t **in,int *nonzero,int ch){
  long i,k,l,s;
  vorbis_look_residue0 *look=(vorbis_look_residue0 *)vl;
  vorbis_info_residue0 *info=look->info;


  int samples_per_partition=info->grouping;
  int partitions_per_word=look->phrasebook->dim;
  int max=(vb->pcmend*ch)>>1;
  int end=(info->end<max?info->end:max);
  int n=end-info->begin;

  if(n>0){

    int partvals=n/samples_per_partition;
    int partwords=(partvals+partitions_per_word-1)/partitions_per_word;
    int **partword=(int **)_vorbis_block_alloc(vb,partwords*sizeof(*partword));
    int beginoff=info->begin/ch;

    for(i=0;i<ch;i++)if(nonzero[i])break;
    if(i==ch)return(0);

    samples_per_partition/=ch;

    for(s=0;s<look->stages;s++){
      for(i=0,l=0;i<partvals;l++){

 if(s==0){

   int temp=vorbis_book_decode(look->phrasebook,&vb->opb);
   if(temp==-1)goto eopbreak;
   partword[l]=look->decodemap[temp];
   if(partword[l]==((void*)0))goto errout;
 }


 for(k=0;k<partitions_per_word && i<partvals;k++,i++)
   if(info->secondstages[partword[l][k]]&(1<<s)){
     codebook *stagebook=look->partbooks[partword[l][k]][s];

     if(stagebook){
       if(vorbis_book_decodevv_add(stagebook,in,
       i*samples_per_partition+beginoff,ch,
       &vb->opb,
       samples_per_partition,-8)==-1)
  goto eopbreak;
     }
   }
      }
    }
  }
 errout:
 eopbreak:
  return(0);
}
