
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vorbis_comment ;
struct TYPE_8__ {int buffer; } ;
typedef TYPE_1__ oggpack_buffer ;
struct TYPE_9__ {int packetno; scalar_t__ granulepos; scalar_t__ e_o_s; scalar_t__ b_o_s; int bytes; int packet; } ;
typedef TYPE_2__ ogg_packet ;


 int OV_EIMPL ;
 int _ogg_malloc (int ) ;
 scalar_t__ _vorbis_pack_comment (TYPE_1__*,int *) ;
 int memcpy (int ,int ,int ) ;
 int oggpack_bytes (TYPE_1__*) ;
 int oggpack_writeclear (TYPE_1__*) ;
 int oggpack_writeinit (TYPE_1__*) ;

int vorbis_commentheader_out(vorbis_comment *vc,
                                          ogg_packet *op){

  oggpack_buffer opb;

  oggpack_writeinit(&opb);
  if(_vorbis_pack_comment(&opb,vc)){
    oggpack_writeclear(&opb);
    return OV_EIMPL;
  }

  op->packet = _ogg_malloc(oggpack_bytes(&opb));
  memcpy(op->packet, opb.buffer, oggpack_bytes(&opb));

  op->bytes=oggpack_bytes(&opb);
  op->b_o_s=0;
  op->e_o_s=0;
  op->granulepos=0;
  op->packetno=1;

  oggpack_writeclear(&opb);
  return 0;
}
