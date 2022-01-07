
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; int posts; int* forward_index; int quant_q; int* loneighbor; int* hineighbor; TYPE_3__* vi; } ;
typedef TYPE_1__ vorbis_look_floor1 ;
typedef TYPE_1__ vorbis_look_floor ;
typedef int vorbis_info_mode ;
struct TYPE_6__ {int* postlist; int partitions; size_t* partitionclass; int mult; scalar_t__* class_dim; } ;
typedef TYPE_3__ vorbis_info_floor1 ;
typedef int vorbis_info_floor ;
typedef int vorbis_dsp_state ;


 int VIF_POSIT ;
 scalar_t__ _ogg_calloc (int,int) ;
 int icomp ;
 int qsort (int**,int,int,int ) ;

__attribute__((used)) static vorbis_look_floor *floor1_look(vorbis_dsp_state *vd,vorbis_info_mode *mi,
                              vorbis_info_floor *in){

  int *sortpointer[VIF_POSIT+2];
  vorbis_info_floor1 *info=(vorbis_info_floor1 *)in;
  vorbis_look_floor1 *look=(vorbis_look_floor1 *)_ogg_calloc(1,sizeof(*look));
  int i,j,n=0;

  look->vi=info;
  look->n=info->postlist[1];
  for(i=0;i<info->partitions;i++)n+=info->class_dim[info->partitionclass[i]];
  n+=2;
  look->posts=n;


  for(i=0;i<n;i++)sortpointer[i]=info->postlist+i;
  qsort(sortpointer,n,sizeof(*sortpointer),icomp);


  for(i=0;i<n;i++)look->forward_index[i]=sortpointer[i]-info->postlist;


  switch(info->mult){
  case 1:
    look->quant_q=256;
    break;
  case 2:
    look->quant_q=128;
    break;
  case 3:
    look->quant_q=86;
    break;
  case 4:
    look->quant_q=64;
    break;
  }



  for(i=0;i<n-2;i++){
    int lo=0;
    int hi=1;
    int lx=0;
    int hx=look->n;
    int currentx=info->postlist[i+2];
    for(j=0;j<i+2;j++){
      int x=info->postlist[j];
      if(x>lx && x<currentx){
 lo=j;
 lx=x;
      }
      if(x<hx && x>currentx){
 hi=j;
 hx=x;
      }
    }
    look->loneighbor[i]=lo;
    look->hineighbor[i]=hi;
  }

  return(look);
}
