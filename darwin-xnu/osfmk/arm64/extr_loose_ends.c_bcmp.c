
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
bcmp(
     const void *pa,
     const void *pb,
     size_t len)
{
 const char *a = (const char *) pa;
 const char *b = (const char *) pb;

 if (len == 0)
  return 0;

 do
  if (*a++ != *b++)
   break;
 while (--len);






 if ((len & 0xFFFFFFFF00000000ULL) && !(len & 0x00000000FFFFFFFFULL))
  return 0xFFFFFFFFL;
 else
  return (int)len;
}
