
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int serialno; int pageno; } ;
typedef TYPE_1__ ogg_stream_state ;


 TYPE_1__* _ogg_calloc (int,int) ;

ogg_stream_state *ogg_stream_create(int serialno){
  ogg_stream_state *os=_ogg_calloc(1,sizeof(*os));
  os->serialno=serialno;
  os->pageno=-1;
  return os;
}
