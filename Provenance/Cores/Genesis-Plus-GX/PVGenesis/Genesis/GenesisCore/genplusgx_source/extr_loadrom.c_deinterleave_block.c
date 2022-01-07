
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void deinterleave_block(uint8 * src)
{
  int i;
  uint8 block[0x4000];
  memcpy (block, src, 0x4000);
  for (i = 0; i < 0x2000; i += 1)
  {
    src[i * 2 + 0] = block[0x2000 + (i)];
    src[i * 2 + 1] = block[0x0000 + (i)];
  }
}
