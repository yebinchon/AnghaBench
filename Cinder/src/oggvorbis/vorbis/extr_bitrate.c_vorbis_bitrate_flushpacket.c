
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* backend_state; } ;
typedef TYPE_1__ vorbis_dsp_state ;
struct TYPE_11__ {int * packetblob; } ;
typedef TYPE_2__ vorbis_block_internal ;
struct TYPE_12__ {int sequence; int granulepos; int eofflag; TYPE_2__* internal; } ;
typedef TYPE_3__ vorbis_block ;
struct TYPE_15__ {int choice; TYPE_3__* vb; } ;
struct TYPE_13__ {TYPE_6__ bms; } ;
typedef TYPE_4__ private_state ;
struct TYPE_14__ {int packetno; int granulepos; int e_o_s; scalar_t__ b_o_s; int bytes; int packet; } ;
typedef TYPE_5__ ogg_packet ;
typedef TYPE_6__ bitrate_manager_state ;


 int PACKETBLOBS ;
 int oggpack_bytes (int ) ;
 int oggpack_get_buffer (int ) ;
 scalar_t__ vorbis_bitrate_managed (TYPE_3__*) ;

int vorbis_bitrate_flushpacket(vorbis_dsp_state *vd,ogg_packet *op){
  private_state *b=vd->backend_state;
  bitrate_manager_state *bm=&b->bms;
  vorbis_block *vb=bm->vb;
  int choice=PACKETBLOBS/2;
  if(!vb)return 0;

  if(op){
    vorbis_block_internal *vbi=vb->internal;

    if(vorbis_bitrate_managed(vb))
      choice=bm->choice;

    op->packet=oggpack_get_buffer(vbi->packetblob[choice]);
    op->bytes=oggpack_bytes(vbi->packetblob[choice]);
    op->b_o_s=0;
    op->e_o_s=vb->eofflag;
    op->granulepos=vb->granulepos;
    op->packetno=vb->sequence;
  }

  bm->vb=0;
  return(1);
}
