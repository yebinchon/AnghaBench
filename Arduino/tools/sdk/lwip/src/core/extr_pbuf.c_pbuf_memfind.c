
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
struct pbuf {scalar_t__ tot_len; } ;


 scalar_t__ pbuf_memcmp (struct pbuf*,scalar_t__,void const*,scalar_t__) ;

u16_t
pbuf_memfind(struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset)
{
  u16_t i;
  u16_t max = p->tot_len - mem_len;
  if (p->tot_len >= mem_len + start_offset) {
    for(i = start_offset; i <= max; ) {
      u16_t plus = pbuf_memcmp(p, i, mem, mem_len);
      if (plus == 0) {
        return i;
      } else {
        i += plus;
      }
    }
  }
  return 0xFFFF;
}
