
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint8_t ;
typedef TYPE_1__* ringbuf_t ;
struct TYPE_5__ {int const* buf; } ;


 int lwIP_ASSERT (int) ;
 int ringbuf_buffer_size (TYPE_1__*) ;
 int const* ringbuf_end (TYPE_1__*) ;

__attribute__((used)) static uint8_t *ringbuf_nextp(ringbuf_t rb, const uint8_t *p)
{
 lwIP_ASSERT((p >= rb->buf) && (p < ringbuf_end(rb)));
 return rb->buf + ((++p -rb->buf) % ringbuf_buffer_size(rb));
}
