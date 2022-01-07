
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void addColorBits(unsigned char* out, size_t index, unsigned bits, unsigned in)
{

  unsigned p = index % (8 / bits);
  in &= (1 << bits) - 1;
  in = in << (bits * (8 / bits - p - 1));
  if(p == 0) out[index * bits / 8] = in;
  else out[index * bits / 8] |= in;
}
