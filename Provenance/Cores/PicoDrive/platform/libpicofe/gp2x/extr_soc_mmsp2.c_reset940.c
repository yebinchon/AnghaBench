
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;

void reset940(int yes, int bank)
{
 memregs[0x3B48>>1] = ((yes&1) << 7) | (bank & 0x03);
}
