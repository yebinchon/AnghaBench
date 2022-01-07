
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t LZ4_GOFAST_SAFETY_MARGIN ;
 scalar_t__ lz4_decode (int **,int *,int *,int const**,int const*) ;
 scalar_t__ lz4_decode_asm (int **,int *,int *,int const**,int const*) ;

size_t lz4raw_decode_buffer(uint8_t * __restrict dst_buffer, size_t dst_size,
                            const uint8_t * __restrict src_buffer, size_t src_size,
                            void * __restrict work __attribute__((unused)))
{
  const uint8_t * src = src_buffer;
  uint8_t * dst = dst_buffer;
  if (lz4_decode(&dst, dst_buffer, dst_buffer + dst_size, &src, src_buffer + src_size))
    return 0;

  return (size_t)(dst - dst_buffer);
}
