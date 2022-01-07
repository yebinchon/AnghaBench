
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e_o_s; } ;
typedef TYPE_1__ ogg_stream_state ;


 scalar_t__ ogg_stream_check (TYPE_1__*) ;

int ogg_stream_eos(ogg_stream_state *os){
  if(ogg_stream_check(os)) return 1;
  return os->e_o_s;
}
