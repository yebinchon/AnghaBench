
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int streq (void const*,void const*) ;

u_int
kxld_dict_string_cmp(const void *key1, const void *key2)
{
    return streq(key1, key2);
}
