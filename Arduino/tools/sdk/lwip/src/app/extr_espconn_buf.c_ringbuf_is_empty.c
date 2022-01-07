
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf_t {int dummy; } ;


 scalar_t__ ringbuf_bytes_free (struct ringbuf_t const*) ;
 scalar_t__ ringbuf_capacity (struct ringbuf_t const*) ;

int ringbuf_is_empty(const struct ringbuf_t *rb)
{
 return ringbuf_bytes_free(rb) == ringbuf_capacity(rb);
}
