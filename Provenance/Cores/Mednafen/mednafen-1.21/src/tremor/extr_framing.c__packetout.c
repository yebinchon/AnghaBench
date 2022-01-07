
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lacing_returned; int lacing_packet; int* lacing_vals; scalar_t__ packetno; scalar_t__ body_returned; int * granule_vals; scalar_t__ body_data; } ;
typedef TYPE_1__ ogg_stream_state ;
struct TYPE_6__ {int e_o_s; int b_o_s; long bytes; int granulepos; scalar_t__ packetno; scalar_t__ packet; } ;
typedef TYPE_2__ ogg_packet ;



__attribute__((used)) static int _packetout(ogg_stream_state *os,ogg_packet *op,int adv){





  int ptr=os->lacing_returned;

  if(os->lacing_packet<=ptr)return(0);

  if(os->lacing_vals[ptr]&0x400){


    os->lacing_returned++;
    os->packetno++;
    return(-1);
  }

  if(!op && !adv)return(1);




  {
    int size=os->lacing_vals[ptr]&0xff;
    long bytes=size;
    int eos=os->lacing_vals[ptr]&0x200;
    int bos=os->lacing_vals[ptr]&0x100;

    while(size==255){
      int val=os->lacing_vals[++ptr];
      size=val&0xff;
      if(val&0x200)eos=0x200;
      bytes+=size;
    }

    if(op){
      op->e_o_s=eos;
      op->b_o_s=bos;
      op->packet=os->body_data+os->body_returned;
      op->packetno=os->packetno;
      op->granulepos=os->granule_vals[ptr];
      op->bytes=bytes;
    }

    if(adv){
      os->body_returned+=bytes;
      os->lacing_returned=ptr+1;
      os->packetno++;
    }
  }
  return(1);
}
