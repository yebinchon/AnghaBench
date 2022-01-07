
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oggpack_buffer ;


 int oggpack_writecheck (int *) ;

int oggpackB_writecheck(oggpack_buffer *b){
  return oggpack_writecheck(b);
}
