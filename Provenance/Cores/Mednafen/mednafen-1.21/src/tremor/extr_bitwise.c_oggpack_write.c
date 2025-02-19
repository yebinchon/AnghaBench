
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int endbyte; int storage; unsigned long* ptr; unsigned long* buffer; int endbit; } ;
typedef TYPE_1__ oggpack_buffer ;


 int BUFFER_INCREMENT ;
 int LONG_MAX ;
 void* _ogg_realloc (unsigned long*,int) ;
 unsigned long* mask ;
 int oggpack_writeclear (TYPE_1__*) ;

void oggpack_write(oggpack_buffer *b,unsigned long value,int bits){
  if(bits<0 || bits>32) goto err;
  if(b->endbyte>=b->storage-4){
    void *ret;
    if(!b->ptr)return;
    if(b->storage>LONG_MAX-BUFFER_INCREMENT) goto err;
    ret=_ogg_realloc(b->buffer,b->storage+BUFFER_INCREMENT);
    if(!ret) goto err;
    b->buffer=ret;
    b->storage+=BUFFER_INCREMENT;
    b->ptr=b->buffer+b->endbyte;
  }

  value&=mask[bits];
  bits+=b->endbit;

  b->ptr[0]|=value<<b->endbit;

  if(bits>=8){
    b->ptr[1]=(unsigned char)(value>>(8-b->endbit));
    if(bits>=16){
      b->ptr[2]=(unsigned char)(value>>(16-b->endbit));
      if(bits>=24){
        b->ptr[3]=(unsigned char)(value>>(24-b->endbit));
        if(bits>=32){
          if(b->endbit)
            b->ptr[4]=(unsigned char)(value>>(32-b->endbit));
          else
            b->ptr[4]=0;
        }
      }
    }
  }

  b->endbyte+=bits/8;
  b->ptr+=bits/8;
  b->endbit=bits&7;
  return;
 err:
  oggpack_writeclear(b);
}
