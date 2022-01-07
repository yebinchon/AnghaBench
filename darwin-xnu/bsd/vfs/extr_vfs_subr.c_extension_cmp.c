
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int
extension_cmp(const void *a, const void *b)
{
    return (strlen((const char *)a) - strlen((const char *)b));
}
