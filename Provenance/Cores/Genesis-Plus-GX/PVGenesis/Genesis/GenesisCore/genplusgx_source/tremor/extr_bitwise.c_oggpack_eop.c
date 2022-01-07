
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ headend; } ;
typedef TYPE_1__ oggpack_buffer ;



int oggpack_eop(oggpack_buffer *b){
  if(b->headend<0)return -1;
  return 0;
}
