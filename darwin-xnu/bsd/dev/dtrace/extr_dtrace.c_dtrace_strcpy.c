
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 char dtrace_load8 (uintptr_t) ;

__attribute__((used)) static void
dtrace_strcpy(const void *src, void *dst, size_t len)
{
 if (len != 0) {
  uint8_t *s1 = dst, c;
  const uint8_t *s2 = src;

  do {
   *s1++ = c = dtrace_load8((uintptr_t)s2++);
  } while (--len != 0 && c != '\0');
 }
}
