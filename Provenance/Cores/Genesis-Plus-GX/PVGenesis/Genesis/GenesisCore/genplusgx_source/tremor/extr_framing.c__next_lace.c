
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int oggbyte_buffer ;
struct TYPE_3__ {int body_fill_next; scalar_t__ laceptr; scalar_t__ lacing_fill; int clearflag; } ;
typedef TYPE_1__ ogg_stream_state ;


 int FINFLAG ;
 int oggbyte_read1 (int *,scalar_t__) ;

__attribute__((used)) static void _next_lace(oggbyte_buffer *ob,ogg_stream_state *os){

  os->body_fill_next=0;
  while(os->laceptr<os->lacing_fill){
    int val=oggbyte_read1(ob,27+os->laceptr++);
    os->body_fill_next+=val;
    if(val<255){
      os->body_fill_next|=FINFLAG;
      os->clearflag=1;
      break;
    }
  }
}
