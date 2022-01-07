
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void memcpy16bswap(unsigned short *dest, void *src, int count)
{
 unsigned char *src_ = src;

 for (; count; count--, src_ += 2)
  *dest++ = (src_[0] << 8) | src_[1];
}
