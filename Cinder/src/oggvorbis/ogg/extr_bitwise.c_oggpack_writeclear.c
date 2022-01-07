
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer; } ;
typedef TYPE_1__ oggpack_buffer ;


 int _ogg_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void oggpack_writeclear(oggpack_buffer *b){
  if(b->buffer)_ogg_free(b->buffer);
  memset(b,0,sizeof(*b));
}
