
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int body_data; } ;
typedef TYPE_1__ ogg_stream_state ;



int ogg_stream_check(ogg_stream_state *os){
  if(!os || !os->body_data) return -1;
  return 0;
}
