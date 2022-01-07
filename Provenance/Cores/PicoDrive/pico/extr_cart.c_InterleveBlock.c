
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int InterleveBlock(unsigned char *dest,unsigned char *src)
{
  int i=0;
  for (i=0;i<0x2000;i++) dest[(i<<1) ]=src[ i];
  for (i=0;i<0x2000;i++) dest[(i<<1)+1]=src[0x2000+i];
  return 0;
}
