
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;



__attribute__((used)) static void
dtrace_bzero(void *dst, size_t len)
{
 uchar_t *cp;

 for (cp = dst; len != 0; len--)
  *cp++ = 0;
}
