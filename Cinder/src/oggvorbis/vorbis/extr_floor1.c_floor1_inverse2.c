
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int posts; int* forward_index; TYPE_4__* vi; } ;
typedef TYPE_3__ vorbis_look_floor1 ;
typedef int vorbis_look_floor ;
struct TYPE_11__ {int mult; int* postlist; } ;
typedef TYPE_4__ vorbis_info_floor1 ;
struct TYPE_12__ {size_t W; TYPE_2__* vd; } ;
typedef TYPE_5__ vorbis_block ;
struct TYPE_13__ {int* blocksizes; } ;
typedef TYPE_6__ codec_setup_info ;
struct TYPE_9__ {TYPE_1__* vi; } ;
struct TYPE_8__ {TYPE_6__* codec_setup; } ;


 float* FLOOR1_fromdB_LOOKUP ;
 int memset (float*,int ,int) ;
 int render_line (int,int,int,int,int,float*) ;

__attribute__((used)) static int floor1_inverse2(vorbis_block *vb,vorbis_look_floor *in,void *memo,
                          float *out){
  vorbis_look_floor1 *look=(vorbis_look_floor1 *)in;
  vorbis_info_floor1 *info=look->vi;

  codec_setup_info *ci=vb->vd->vi->codec_setup;
  int n=ci->blocksizes[vb->W]/2;
  int j;

  if(memo){

    int *fit_value=(int *)memo;
    int hx=0;
    int lx=0;
    int ly=fit_value[0]*info->mult;

    ly=(ly<0?0:ly>255?255:ly);

    for(j=1;j<look->posts;j++){
      int current=look->forward_index[j];
      int hy=fit_value[current]&0x7fff;
      if(hy==fit_value[current]){

        hx=info->postlist[current];
        hy*=info->mult;

        hy=(hy<0?0:hy>255?255:hy);

        render_line(n,lx,hx,ly,hy,out);

        lx=hx;
        ly=hy;
      }
    }
    for(j=hx;j<n;j++)out[j]*=FLOOR1_fromdB_LOOKUP[ly];
    return(1);
  }
  memset(out,0,sizeof(*out)*n);
  return(0);
}
