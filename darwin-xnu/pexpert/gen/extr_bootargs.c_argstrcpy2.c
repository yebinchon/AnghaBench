
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isargsep (char) ;

__attribute__((used)) static int
argstrcpy2(
 char *from,
 char *to,
 unsigned maxlen)
{
 unsigned int i = 0;

 while (!isargsep(*from) && i < maxlen) {
  i++;
  *to++ = *from++;
 }
 *to = 0;
 return(i);
}
