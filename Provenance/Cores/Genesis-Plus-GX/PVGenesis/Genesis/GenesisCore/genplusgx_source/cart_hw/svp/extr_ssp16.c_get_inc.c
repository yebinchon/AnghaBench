
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_inc(int mode)
{
  int inc = (mode >> 11) & 7;
  if (inc != 0) {
    if (inc != 7) inc--;

    inc = 1 << inc;
    if (mode & 0x8000) inc = -inc;
  }
  return inc;
}
