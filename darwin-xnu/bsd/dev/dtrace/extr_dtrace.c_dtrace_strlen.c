
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;


 char dtrace_load8 (uintptr_t) ;

__attribute__((used)) static size_t
dtrace_strlen(const char *s, size_t lim)
{
 uint_t len;

 for (len = 0; len != lim; len++) {
  if (dtrace_load8((uintptr_t)s++) == '\0')
   break;
 }

 return (len);
}
