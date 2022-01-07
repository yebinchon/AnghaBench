
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get32bit(unsigned char *doh, int index)
{


   doh += index;




  return ( (unsigned)doh[0] << 24) | (doh[1] << 16) |(doh[2] << 8) | doh[3];
}
