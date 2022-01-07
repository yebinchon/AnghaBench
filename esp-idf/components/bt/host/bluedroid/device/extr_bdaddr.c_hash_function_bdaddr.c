
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_index_t ;
typedef int bt_bdaddr_t ;



hash_index_t hash_function_bdaddr(const void *key)
{
    hash_index_t hash = 5381;
    const char *bytes = (const char *)key;
    for (size_t i = 0; i < sizeof(bt_bdaddr_t); ++i) {
        hash = ((hash << 5) + hash) + bytes[i];
    }
    return hash;
}
