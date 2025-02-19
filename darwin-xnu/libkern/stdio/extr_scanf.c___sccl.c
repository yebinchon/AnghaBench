
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int memset (char*,int,int) ;

__attribute__((used)) static const u_char *
__sccl(char *tab, const u_char *fmt)
{
 int c, n, v;


 c = *fmt++;
 if (c == '^') {
  v = 1;
  c = *fmt++;
 } else
  v = 0;


 (void) memset(tab, v, 256);

 if (c == 0)
  return (fmt - 1);
 v = 1 - v;
 for (;;) {
  tab[c] = v;
doswitch:
  n = *fmt++;
  switch (n) {

  case 0:
   return (fmt - 1);

  case '-':
   n = *fmt;
   if (n == ']' || n < c) {
    c = '-';
    break;
   }
   fmt++;

   do {
       tab[++c] = v;
   } while (c < n);
   c = n;





   goto doswitch;

  case ']':
   return (fmt);

  default:
   c = n;
   break;
  }
 }

}
