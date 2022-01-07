
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int endbyte; long endbit; } ;
typedef TYPE_1__ oggpack_buffer ;



long oggpack_bits(oggpack_buffer *b){
  return(b->endbyte*8+b->endbit);
}
