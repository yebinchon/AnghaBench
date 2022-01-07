
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* backend_state; } ;
typedef TYPE_1__ vorbis_dsp_state ;
struct TYPE_7__ {TYPE_1__* vd; } ;
typedef TYPE_2__ vorbis_block ;
struct TYPE_9__ {scalar_t__ managed; } ;
struct TYPE_8__ {TYPE_4__ bms; } ;
typedef TYPE_3__ private_state ;
typedef TYPE_4__ bitrate_manager_state ;



int vorbis_bitrate_managed(vorbis_block *vb){
  vorbis_dsp_state *vd=vb->vd;
  private_state *b=vd->backend_state;
  bitrate_manager_state *bm=&b->bms;

  if(bm && bm->managed)return(1);
  return(0);
}
