
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_9__ {int key_size; int min_empty; int upper_limit; int lower_limit; scalar_t__ num_entries; scalar_t__ num_buckets; scalar_t__ num_empty; int buckets; int value_size; } ;
typedef TYPE_1__ HashIndex ;


 int free (TYPE_1__*) ;
 int hashindex_free (TYPE_1__*) ;
 int hashindex_free_buckets (TYPE_1__*) ;
 TYPE_1__* hashindex_init (int,int,int ) ;
 unsigned char* hashindex_next_key (TYPE_1__*,unsigned char*) ;
 int hashindex_set (TYPE_1__*,unsigned char*,unsigned char*) ;

__attribute__((used)) static int
hashindex_resize(HashIndex *index, int capacity)
{
    HashIndex *new;
    unsigned char *key = ((void*)0);
    int32_t key_size = index->key_size;

    if(!(new = hashindex_init(capacity, key_size, index->value_size))) {
        return 0;
    }
    while((key = hashindex_next_key(index, key))) {
        if(!hashindex_set(new, key, key + key_size)) {

            hashindex_free(new);
            return 0;
        }
    }
    hashindex_free_buckets(index);
    index->buckets = new->buckets;
    index->num_buckets = new->num_buckets;
    index->num_empty = index->num_buckets - index->num_entries;
    index->lower_limit = new->lower_limit;
    index->upper_limit = new->upper_limit;
    index->min_empty = new->min_empty;
    free(new);
    return 1;
}
