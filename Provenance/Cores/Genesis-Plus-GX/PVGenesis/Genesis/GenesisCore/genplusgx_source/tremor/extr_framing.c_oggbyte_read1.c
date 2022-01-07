
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* ptr; int pos; } ;
typedef TYPE_1__ oggbyte_buffer ;


 int _positionB (TYPE_1__*,int) ;
 int _positionF (TYPE_1__*,int) ;

__attribute__((used)) static unsigned char oggbyte_read1(oggbyte_buffer *b,int pos){
  _positionB(b,pos);
  _positionF(b,pos);
  return b->ptr[pos-b->pos];
}
