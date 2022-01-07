
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char hex2int (int ) ;
 scalar_t__ isprint (char) ;
 char* memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
url_decode(char *str)
{
 if (!str) {
  return;
 }

 while (*str) {
  if (*str == '%') {
   char c = 0;
   char *esc = str++;

   if (*str) {
    c += hex2int(*str++);
   }
   if (*str) {
    c = (c << 4) + hex2int(*str++);
   }

   if (isprint(c)) {


    *esc++ = c;
    str = memmove(esc, str, strlen(str)+1);
   }
  } else {
   str++;
  }
 }
}
