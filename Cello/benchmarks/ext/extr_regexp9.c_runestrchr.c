
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Rune ;



Rune*
runestrchr(const Rune *s, Rune c)
{
 Rune c0 = c;
 Rune c1;

 if(c == 0) {
  while(*s++)
   ;
  return (Rune*)s-1;
 }

 while((c1 = *s++))
  if(c1 == c0)
   return (Rune*)s-1;
 return 0;
}
