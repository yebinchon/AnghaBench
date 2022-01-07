
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;



u_int
kxld_dict_uint32_cmp(const void *key1, const void *key2)
{
    const uint32_t *a = key1;
    const uint32_t *b = key2;

    return (a && b && (*a == *b));
}
