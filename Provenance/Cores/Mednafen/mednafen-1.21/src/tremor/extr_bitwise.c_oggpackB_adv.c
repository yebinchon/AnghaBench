
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oggpack_buffer ;


 int oggpack_adv (int *,int) ;

void oggpackB_adv(oggpack_buffer *b,int bits){
  oggpack_adv(b,bits);
}
