
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oggpack_buffer ;


 int oggpack_readinit (int *,unsigned char*,int) ;

void oggpackB_readinit(oggpack_buffer *b,unsigned char *buf,int bytes){
  oggpack_readinit(b,buf,bytes);
}
