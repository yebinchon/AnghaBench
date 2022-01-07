
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_7__ {TYPE_3__* backend_state; TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_dsp_state ;
struct TYPE_8__ {int* window; } ;
typedef TYPE_3__ private_state ;
struct TYPE_9__ {int halfrate_flag; } ;
typedef TYPE_4__ codec_setup_info ;


 float const* _vorbis_window_get (int) ;

const float *vorbis_window(vorbis_dsp_state *v,int W){
  vorbis_info *vi=v->vi;
  codec_setup_info *ci=vi->codec_setup;
  int hs=ci->halfrate_flag;
  private_state *b=v->backend_state;

  if(b->window[W]-1<0)return ((void*)0);
  return _vorbis_window_get(b->window[W]-hs);
}
