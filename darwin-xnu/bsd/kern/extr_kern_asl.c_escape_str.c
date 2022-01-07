
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;

int
escape_str(char *str, int len, int buflen)
{
 int count;
 char *src, *dst;


 src = str;
 count = 0;
 do {
  if ((*src == '[') || (*src == ']')) {
   count++;
  }
 } while (*src++);

 if (count) {




  if ((buflen - len) < count) {
   return (ENOSPC);
  }

  src = str + len;
  dst = src + count;
  while (count) {
   *dst-- = *src;
   if ((*src == '[') || (*src == ']')) {

    *dst-- = '\\';
    count--;
   }
   src--;
  }
 }

 return (0);
}
