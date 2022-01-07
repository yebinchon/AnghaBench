
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_index_t ;


 size_t strlen (char const*) ;

hash_index_t hash_function_string(const void *key)
{
    hash_index_t hash = 5381;
    const char *name = (const char *)key;
    size_t string_len = strlen(name);
    for (size_t i = 0; i < string_len; ++i) {
        hash = ((hash << 5) + hash ) + name[i];
    }
    return hash;
}
