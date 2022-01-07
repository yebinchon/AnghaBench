
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uchar ;
typedef long Rune ;


 long Runeself ;
 long Runesync ;
 int chartorune (long*,char*) ;
 char* strchr (char*,long) ;

char*
utfrune(char *s, long c)
{
 long c1;
 Rune r;
 int n;

 if(c < Runesync)
  return strchr(s, c);

 for(;;) {
  c1 = *(uchar*)s;
  if(c1 < Runeself) {
   if(c1 == 0)
    return 0;
   if(c1 == c)
    return s;
   s++;
   continue;
  }
  n = chartorune(&r, s);
  if(r == c)
   return s;
  s += n;
 }
}
