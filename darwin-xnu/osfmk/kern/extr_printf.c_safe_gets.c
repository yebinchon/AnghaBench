
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cngetc () ;
 int printf (char*,...) ;

void
safe_gets(
 char *str,
 int maxlen)
{
 char *lp;
 int c;
 char *strmax = str + maxlen - 1;

 lp = str;
 for (;;) {
  c = cngetc();
  switch (c) {
  case '\n':
  case '\r':
   printf("\n");
   *lp++ = 0;
   return;

  case '\b':
  case '#':
  case '\177':
   if (lp > str) {
    printf("\b \b");
    lp--;
   }
   continue;

  case '@':
  case 'u'&037:
   lp = str;
   printf("\n\r");
   continue;

  default:
   if (c >= ' ' && c < '\177') {
    if (lp < strmax) {
     *lp++ = c;
     printf("%c", c);
    }
    else {
     printf("%c", '\007');
    }
   }
  }
 }
}
