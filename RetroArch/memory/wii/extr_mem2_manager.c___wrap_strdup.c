
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __real_strdup (char const*) ;
 void* _mem2_strdup (char const*) ;

__attribute__ ((used)) void *__wrap_strdup(const char *s)
{
   void *p = __real_strdup(s);
   if (p != 0)
      return p;
   return _mem2_strdup(s);
}
