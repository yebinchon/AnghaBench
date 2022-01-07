
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pageno; scalar_t__ body_fill_next; scalar_t__ laceptr; scalar_t__ clearflag; scalar_t__ spanflag; scalar_t__ holeflag; scalar_t__ lacing_fill; scalar_t__ body_fill; scalar_t__ granulepos; scalar_t__ packetno; scalar_t__ b_o_s; scalar_t__ e_o_s; scalar_t__ body_head; scalar_t__ body_tail; scalar_t__ header_head; scalar_t__ header_tail; } ;
typedef TYPE_1__ ogg_stream_state ;


 int OGG_SUCCESS ;
 int ogg_buffer_release (scalar_t__) ;

int ogg_stream_reset(ogg_stream_state *os){

  ogg_buffer_release(os->header_tail);
  ogg_buffer_release(os->body_tail);
  os->header_tail=os->header_head=0;
  os->body_tail=os->body_head=0;

  os->e_o_s=0;
  os->b_o_s=0;
  os->pageno=-1;
  os->packetno=0;
  os->granulepos=0;

  os->body_fill=0;
  os->lacing_fill=0;

  os->holeflag=0;
  os->spanflag=0;
  os->clearflag=0;
  os->laceptr=0;
  os->body_fill_next=0;

  return OGG_SUCCESS;
}
