
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void uint8_t ;
typedef TYPE_1__* ringbuf_t ;
struct TYPE_5__ {void const* tail; void const* buf; } ;


 size_t LWIP_MIN (int,size_t) ;
 int lwIP_ASSERT (int) ;
 int os_memcpy (void*,void const*,size_t) ;
 size_t ringbuf_bytes_used (TYPE_1__*) ;
 void* ringbuf_end (TYPE_1__*) ;

void *ringbuf_memcpy_from(void *dst,ringbuf_t src, size_t count)
{
 size_t bytes_used = ringbuf_bytes_used(src);

 if (count > bytes_used)
  return ((void*)0);

 const uint8_t *u8dst = dst;
 const uint8_t *bufend = ringbuf_end(src);
 size_t nwritten = 0;

 while (nwritten != count){
  lwIP_ASSERT(bufend > src->tail);
  size_t n = LWIP_MIN(bufend - src->tail, count - nwritten);
  os_memcpy((uint8_t*)u8dst + nwritten, src->tail, n);
  src->tail += n;
  nwritten += n;

  if (src->tail == bufend)
   src->tail = src->buf;
 }

 lwIP_ASSERT(count + ringbuf_bytes_used(src) == bytes_used);
 return src->tail;
}
