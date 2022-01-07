
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 int memcpy (char*,char const*,size_t) ;
 int panic (char*,char*,char const*,size_t,size_t,size_t) ;
 size_t strlen (char const*) ;

char *
__strcat_chk (char *restrict dst, const char *restrict src, size_t chk_size)
{
  size_t len1 = strlen(dst);
  size_t len2 = strlen(src);
  size_t required_len = len1 + len2 + 1;
  if (__improbable (chk_size < required_len)) {
    panic("__strcat_chk object size check failed: dst %p, src %p, (%zu < %zu + %zu + 1)", dst, src, chk_size, len1, len2);
  }
  memcpy(dst + len1, src, len2 + 1);
  return dst;
}
