
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int update_texture_asm (int const*,int *,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void convert_texture16(const uint32_t *_src, uint32_t *_dst,
      unsigned width, unsigned height, unsigned pitch)
{
   width &= ~3;
   height &= ~3;
   update_texture_asm(_src, _dst, width, height, pitch);
}
