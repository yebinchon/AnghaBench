
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storage; int ptr; } ;
typedef TYPE_1__ oggpack_buffer ;



int oggpack_writecheck(oggpack_buffer *b){
  if(!b->ptr || !b->storage)return -1;
  return 0;
}
