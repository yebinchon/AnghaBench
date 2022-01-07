
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OSSwapInt32 (int const) ;
 int assert (int) ;

__attribute__((used)) static void
key_byteswap(void *_dst, const void *_src, size_t len)
{
 uint32_t *dst __attribute__((align_value(1))) = _dst;
 const uint32_t *src __attribute__((align_value(1))) = _src;

 assert(len % sizeof(uint32_t) == 0);

 len = len / sizeof(uint32_t);
 for (size_t i = 0; i < len; i++) {
  dst[len-i-1] = OSSwapInt32(src[i]);
 }
}
