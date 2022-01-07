
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;

__attribute__((visibility("hidden")))
void
bcopy(const void *s1, void *s2, size_t n)
{
 memcpy(s2, s1, n);
}
