
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t LONGPTR_MASK ;
 unsigned long const mask01 ;
 unsigned long const mask80 ;
 int testbyte (int) ;

__attribute__((visibility("hidden")))
size_t
_libkernel_strlen(const char *str)
{
 const char *p;
 const unsigned long *lp;


 for (p = str; (uintptr_t)p & LONGPTR_MASK; p++)
     if (*p == '\0')
  return (p - str);


 for (lp = (const unsigned long *)p; ; lp++)
     if ((*lp - mask01) & mask80) {
  p = (const char *)(lp);
  testbyte(0);
  testbyte(1);
  testbyte(2);
  testbyte(3);






     }


 return (0);
}
