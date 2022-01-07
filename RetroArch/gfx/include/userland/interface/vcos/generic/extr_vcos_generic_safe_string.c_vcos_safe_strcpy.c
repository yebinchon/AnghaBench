
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;

size_t vcos_safe_strcpy(char *dst, const char *src, size_t dstlen, size_t offset)
{
   if (offset < dstlen)
   {
      const char *p = src;
      char *endp = dst + dstlen -1;

      dst += offset;

      for (; *p!='\0' && dst != endp; dst++, p++)
         *dst = *p;
      *dst = '\0';
   }
   offset += strlen(src);

   return offset;
}
