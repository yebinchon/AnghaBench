
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int train_seq; int frames; TYPE_2__* info; } ;
typedef TYPE_1__ vorbis_look_residue0 ;
typedef int vorbis_look_residue ;
struct TYPE_4__ {int grouping; int partitions; int end; int begin; int* classmetric1; int* classmetric2; } ;
typedef TYPE_2__ vorbis_info_residue0 ;
typedef int vorbis_block ;
typedef int FILE ;


 void* _vorbis_block_alloc (int *,int) ;
 int abs (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int memset (long*,int ,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static long **_2class(vorbis_block *vb,vorbis_look_residue *vl,int **in,
                      int ch){
  long i,j,k,l;
  vorbis_look_residue0 *look=(vorbis_look_residue0 *)vl;
  vorbis_info_residue0 *info=look->info;


  int samples_per_partition=info->grouping;
  int possible_partitions=info->partitions;
  int n=info->end-info->begin;

  int partvals=n/samples_per_partition;
  long **partword=_vorbis_block_alloc(vb,sizeof(*partword));






  partword[0]=_vorbis_block_alloc(vb,partvals*sizeof(*partword[0]));
  memset(partword[0],0,partvals*sizeof(*partword[0]));

  for(i=0,l=info->begin/ch;i<partvals;i++){
    int magmax=0;
    int angmax=0;
    for(j=0;j<samples_per_partition;j+=ch){
      if(abs(in[0][l])>magmax)magmax=abs(in[0][l]);
      for(k=1;k<ch;k++)
        if(abs(in[k][l])>angmax)angmax=abs(in[k][l]);
      l++;
    }

    for(j=0;j<possible_partitions-1;j++)
      if(magmax<=info->classmetric1[j] &&
         angmax<=info->classmetric2[j])
        break;

    partword[0][i]=j;

  }
  look->frames++;

  return(partword);
}
