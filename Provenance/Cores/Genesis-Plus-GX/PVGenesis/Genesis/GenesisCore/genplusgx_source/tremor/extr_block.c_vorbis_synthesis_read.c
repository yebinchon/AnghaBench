
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pcm_returned; scalar_t__ pcm_current; } ;
typedef TYPE_1__ vorbis_dsp_state ;


 int OV_EINVAL ;

int vorbis_synthesis_read(vorbis_dsp_state *v,int bytes){
  if(bytes && v->pcm_returned+bytes>v->pcm_current)return(OV_EINVAL);
  v->pcm_returned+=bytes;
  return(0);
}
