
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int endbit; int endbyte; int storage; int * ptr; } ;
typedef TYPE_1__ oggpack_buffer ;



void oggpack_adv(oggpack_buffer *b,int bits){
  bits+=b->endbit;

  if(b->endbyte > b->storage-((bits+7)>>3)) goto overflow;

  b->ptr+=bits/8;
  b->endbyte+=bits/8;
  b->endbit=bits&7;
  return;

 overflow:
  b->ptr=((void*)0);
  b->endbyte=b->storage;
  b->endbit=1;
}
