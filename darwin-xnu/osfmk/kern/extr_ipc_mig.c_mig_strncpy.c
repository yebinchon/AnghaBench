
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
mig_strncpy(
 char *dest,
 const char *src,
 int len)
{
    int i = 0;

    if (len > 0)
 if (dest != ((void*)0)) {
     if (src != ((void*)0))
     for (i=1; i<len; i++)
   if (! (*dest++ = *src++))
       return i;
         *dest = '\0';
 }
    return i;
}
