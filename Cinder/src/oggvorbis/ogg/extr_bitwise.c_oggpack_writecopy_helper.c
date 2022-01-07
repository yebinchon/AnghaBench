
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ endbyte; scalar_t__ storage; scalar_t__* ptr; scalar_t__* buffer; scalar_t__ endbit; } ;
typedef TYPE_1__ oggpack_buffer ;


 scalar_t__ BUFFER_INCREMENT ;
 void* _ogg_realloc (scalar_t__*,scalar_t__) ;
 int memmove (scalar_t__*,void*,long) ;
 int oggpack_writeclear (TYPE_1__*) ;

__attribute__((used)) static void oggpack_writecopy_helper(oggpack_buffer *b,
                                     void *source,
                                     long bits,
                                     void (*w)(oggpack_buffer *,
                                               unsigned long,
                                               int),
                                     int msb){
  unsigned char *ptr=(unsigned char *)source;

  long bytes=bits/8;
  bits-=bytes*8;

  if(b->endbit){
    int i;

    for(i=0;i<bytes;i++)
      w(b,(unsigned long)(ptr[i]),8);
  }else{

    if(b->endbyte+bytes+1>=b->storage){
      void *ret;
      if(!b->ptr) goto err;
      if(b->endbyte+bytes+BUFFER_INCREMENT>b->storage) goto err;
      b->storage=b->endbyte+bytes+BUFFER_INCREMENT;
      ret=_ogg_realloc(b->buffer,b->storage);
      if(!ret) goto err;
      b->buffer=ret;
      b->ptr=b->buffer+b->endbyte;
    }

    memmove(b->ptr,source,bytes);
    b->ptr+=bytes;
    b->endbyte+=bytes;
    *b->ptr=0;

  }
  if(bits){
    if(msb)
      w(b,(unsigned long)(ptr[bytes]>>(8-bits)),bits);
    else
      w(b,(unsigned long)(ptr[bytes]),bits);
  }
  return;
 err:
  oggpack_writeclear(b);
}
