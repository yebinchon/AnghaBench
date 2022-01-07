
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned short get16bit(unsigned char *doh, int index)
{
  return (unsigned short)((doh[index] << 8) | doh[index + 1]);
}
