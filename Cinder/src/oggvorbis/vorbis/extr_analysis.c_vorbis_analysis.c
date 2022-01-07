
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * packetblob; } ;
typedef TYPE_1__ vorbis_block_internal ;
struct TYPE_10__ {int sequence; int granulepos; int eofflag; int opb; scalar_t__ res_bits; scalar_t__ floor_bits; scalar_t__ time_bits; scalar_t__ glue_bits; TYPE_1__* internal; } ;
typedef TYPE_2__ vorbis_block ;
struct TYPE_11__ {int packetno; int granulepos; int e_o_s; scalar_t__ b_o_s; int bytes; int packet; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_12__ {int (* forward ) (TYPE_2__*) ;} ;


 int OV_EINVAL ;
 int PACKETBLOBS ;
 TYPE_8__** _mapping_P ;
 int oggpack_bytes (int *) ;
 int oggpack_get_buffer (int *) ;
 int oggpack_reset (int ) ;
 int stub1 (TYPE_2__*) ;
 scalar_t__ vorbis_bitrate_managed (TYPE_2__*) ;

int vorbis_analysis(vorbis_block *vb, ogg_packet *op){
  int ret,i;
  vorbis_block_internal *vbi=vb->internal;

  vb->glue_bits=0;
  vb->time_bits=0;
  vb->floor_bits=0;
  vb->res_bits=0;


  for(i=0;i<PACKETBLOBS;i++)
    oggpack_reset(vbi->packetblob[i]);





  if((ret=_mapping_P[0]->forward(vb)))
    return(ret);

  if(op){
    if(vorbis_bitrate_managed(vb))


      return(OV_EINVAL);

    op->packet=oggpack_get_buffer(&vb->opb);
    op->bytes=oggpack_bytes(&vb->opb);
    op->b_o_s=0;
    op->e_o_s=vb->eofflag;
    op->granulepos=vb->granulepos;
    op->packetno=vb->sequence;
  }
  return(0);
}
