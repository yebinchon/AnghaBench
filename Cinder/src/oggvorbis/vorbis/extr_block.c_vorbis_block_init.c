
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ analysisp; } ;
typedef TYPE_1__ vorbis_dsp_state ;
struct TYPE_8__ {int ampmax; int ** packetblob; } ;
typedef TYPE_2__ vorbis_block_internal ;
struct TYPE_9__ {int opb; TYPE_2__* internal; int * localstore; scalar_t__ localalloc; TYPE_1__* vd; } ;
typedef TYPE_3__ vorbis_block ;
typedef int oggpack_buffer ;


 int PACKETBLOBS ;
 void* _ogg_calloc (int,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int oggpack_writeinit (int *) ;

int vorbis_block_init(vorbis_dsp_state *v, vorbis_block *vb){
  int i;
  memset(vb,0,sizeof(*vb));
  vb->vd=v;
  vb->localalloc=0;
  vb->localstore=((void*)0);
  if(v->analysisp){
    vorbis_block_internal *vbi=
      vb->internal=_ogg_calloc(1,sizeof(vorbis_block_internal));
    vbi->ampmax=-9999;

    for(i=0;i<PACKETBLOBS;i++){
      if(i==PACKETBLOBS/2){
        vbi->packetblob[i]=&vb->opb;
      }else{
        vbi->packetblob[i]=
          _ogg_calloc(1,sizeof(oggpack_buffer));
      }
      oggpack_writeinit(vbi->packetblob[i]);
    }
  }

  return(0);
}
