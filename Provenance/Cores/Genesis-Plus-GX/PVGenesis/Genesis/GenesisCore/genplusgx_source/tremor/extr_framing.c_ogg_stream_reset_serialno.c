
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int serialno; } ;
typedef TYPE_1__ ogg_stream_state ;


 int OGG_SUCCESS ;
 int ogg_stream_reset (TYPE_1__*) ;

int ogg_stream_reset_serialno(ogg_stream_state *os,int serialno){
  ogg_stream_reset(os);
  os->serialno=serialno;
  return OGG_SUCCESS;
}
