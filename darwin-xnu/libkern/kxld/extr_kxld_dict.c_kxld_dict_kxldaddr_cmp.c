
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ kxld_addr_t ;



u_int
kxld_dict_kxldaddr_cmp(const void *key1, const void *key2)
{
    const kxld_addr_t *a = key1;
    const kxld_addr_t *b = key2;

    return (a && b && (*a == *b));
}
