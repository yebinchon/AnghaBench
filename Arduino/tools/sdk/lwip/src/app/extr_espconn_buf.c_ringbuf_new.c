
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct ringbuf_t {int dummy; } ;
typedef TYPE_1__* ringbuf_t ;
struct TYPE_5__ {size_t size; int * buf; } ;


 int os_free (TYPE_1__*) ;
 scalar_t__ os_zalloc (int) ;
 int ringbuf_reset (TYPE_1__*) ;

ringbuf_t ringbuf_new(size_t capacity)
{
 ringbuf_t rb = (ringbuf_t)os_zalloc(sizeof(struct ringbuf_t));
 if (rb){
  rb->size = capacity + 1;
  rb->buf = (uint8*)os_zalloc(rb->size);
  if (rb->buf){
   ringbuf_reset(rb);
  }else{
   os_free(rb);
   return ((void*)0);
  }
 }
 return rb;
}
