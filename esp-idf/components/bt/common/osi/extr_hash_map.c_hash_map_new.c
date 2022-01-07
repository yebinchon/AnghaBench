
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_free_fn ;
typedef int key_equality_fn ;
typedef int hash_map_t ;
typedef int hash_index_fn ;
typedef int data_free_fn ;


 int * hash_map_new_internal (size_t,int ,int ,int ,int ) ;

hash_map_t *hash_map_new(
    size_t num_bucket,
    hash_index_fn hash_fn,
    key_free_fn key_fn,
    data_free_fn data_fn,
    key_equality_fn equality_fn)
{
    return hash_map_new_internal(num_bucket, hash_fn, key_fn, data_fn, equality_fn);
}
