
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __real_strndup (char const*,size_t) ;
 void* _mem2_strndup (char const*,size_t) ;

__attribute__ ((used)) void *__wrap_strndup(const char *s, size_t n)
{
   void *p = __real_strndup(s, n);
   if (p != 0)
      return p;
   return _mem2_strndup(s, n);
}
