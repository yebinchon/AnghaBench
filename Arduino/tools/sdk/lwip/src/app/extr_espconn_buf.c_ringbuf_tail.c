
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_t {void const* tail; } ;



const void* ringbuf_tail(const struct ringbuf_t *rb)
{
 return rb->tail;
}
