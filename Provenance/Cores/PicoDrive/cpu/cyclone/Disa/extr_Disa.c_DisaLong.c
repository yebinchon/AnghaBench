
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaWord (unsigned int) ;

__attribute__((used)) static unsigned int DisaLong(unsigned int a)
{
  unsigned int d=0;
  if (DisaWord==((void*)0)) return d;

  d= DisaWord(a)<<16;
  d|=DisaWord(a+2)&0xffff;
  return d;
}
