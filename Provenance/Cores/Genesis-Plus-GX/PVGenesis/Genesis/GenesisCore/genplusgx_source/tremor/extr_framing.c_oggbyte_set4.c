
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* ptr; int pos; } ;
typedef TYPE_1__ oggbyte_buffer ;
typedef int ogg_uint32_t ;


 int _positionB (TYPE_1__*,int) ;
 int _positionF (TYPE_1__*,int) ;

__attribute__((used)) static void oggbyte_set4(oggbyte_buffer *b,ogg_uint32_t val,int pos){
  int i;
  _positionB(b,pos);
  for(i=0;i<4;i++){
    _positionF(b,pos);
    b->ptr[pos-b->pos]=val;
    val>>=8;
    ++pos;
  }
}
