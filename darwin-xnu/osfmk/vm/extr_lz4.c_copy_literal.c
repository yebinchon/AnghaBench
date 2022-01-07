
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int copy16 (int *,int const*) ;
 int copy32 (int *,int const*) ;

__attribute__((used)) static inline uint8_t *copy_literal(uint8_t *dst, const uint8_t * restrict src, uint32_t L) {
  uint8_t *end = dst + L;
  { copy16(dst, src); dst += 16; src += 16; }
  while (dst < end) { copy32(dst, src); dst += 32; src += 32; }
  return end;
}
