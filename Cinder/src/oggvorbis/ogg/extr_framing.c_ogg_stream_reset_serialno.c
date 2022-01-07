
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int serialno; } ;
typedef TYPE_1__ ogg_stream_state ;


 scalar_t__ ogg_stream_check (TYPE_1__*) ;
 int ogg_stream_reset (TYPE_1__*) ;

int ogg_stream_reset_serialno(ogg_stream_state *os,int serialno){
  if(ogg_stream_check(os)) return -1;
  ogg_stream_reset(os);
  os->serialno=serialno;
  return(0);
}
