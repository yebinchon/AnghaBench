
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlcpy (char*,char const*,size_t) ;
 size_t strlen (char*) ;

size_t strlcat(char *dest, const char *source, size_t size)
{
   size_t len = strlen(dest);

   dest += len;

   if (len > size)
      size = 0;
   else
      size -= len;

   return len + strlcpy(dest, source, size);
}
