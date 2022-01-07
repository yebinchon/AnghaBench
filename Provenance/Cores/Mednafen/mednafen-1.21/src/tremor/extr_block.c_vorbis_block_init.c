
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vorbis_dsp_state ;
struct TYPE_4__ {int * localstore; scalar_t__ localalloc; int * vd; } ;
typedef TYPE_1__ vorbis_block ;


 int memset (TYPE_1__*,int ,int) ;

int vorbis_block_init(vorbis_dsp_state *v, vorbis_block *vb){
  memset(vb,0,sizeof(*vb));
  vb->vd=v;
  vb->localalloc=0;
  vb->localstore=((void*)0);

  return(0);
}
