
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stackshot_memcpy (char*,char const*,size_t const) ;
 size_t strlen (char const*) ;

size_t
stackshot_strlcpy(char *dst, const char *src, size_t maxlen)
{
 const size_t srclen = strlen(src);

 if (srclen < maxlen) {
  stackshot_memcpy(dst, src, srclen+1);
 } else if (maxlen != 0) {
  stackshot_memcpy(dst, src, maxlen-1);
  dst[maxlen-1] = '\0';
 }

 return srclen;
}
