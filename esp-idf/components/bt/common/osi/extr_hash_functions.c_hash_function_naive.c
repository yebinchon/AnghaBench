
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_index_t ;



hash_index_t hash_function_naive(const void *key)
{
    return (hash_index_t)key;
}
