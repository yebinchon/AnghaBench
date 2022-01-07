
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 int memcpy (char*,char const*,size_t) ;
 int panic (char*,char*,char const*,size_t,size_t) ;
 size_t strlen (char const*) ;

char *
__strcpy_chk (char *restrict dst, const char *restrict src, size_t chk_size)
{
  size_t len = strlen(src);
  if (__improbable (chk_size < len + 1)) {
    panic("__strcpy_chk object size check failed: dst %p, src %p, (%zu < %zu + 1)", dst, src, chk_size, len);
  }
  memcpy(dst, src, len+1);
  return dst;
}
