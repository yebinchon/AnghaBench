
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oggpack_buffer ;


 long oggpack_bytes (int *) ;

long oggpackB_bytes(oggpack_buffer *b){
  return oggpack_bytes(b);
}
