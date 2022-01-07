
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * buf; } ;
struct TYPE_8__ {int key_size; int value_size; int num_buckets; int num_empty; int bucket_size; TYPE_1__ buckets_buffer; int min_empty; int upper_limit; int lower_limit; scalar_t__ num_entries; int buckets; } ;
typedef TYPE_2__ HashIndex ;


 int BUCKET_MARK_EMPTY (TYPE_2__*,int) ;
 int EPRINTF (char*) ;
 int calloc (int,int) ;
 int fit_size (int) ;
 int free (TYPE_2__*) ;
 int get_lower_limit (int) ;
 int get_min_empty (int) ;
 int get_upper_limit (int) ;
 TYPE_2__* malloc (int) ;

__attribute__((used)) static HashIndex *
hashindex_init(int capacity, int key_size, int value_size)
{
    HashIndex *index;
    int i;
    capacity = fit_size(capacity);

    if(!(index = malloc(sizeof(HashIndex)))) {
        EPRINTF("malloc header failed");
        return ((void*)0);
    }
    if(!(index->buckets = calloc(capacity, key_size + value_size))) {
        EPRINTF("malloc buckets failed");
        free(index);
        return ((void*)0);
    }
    index->num_entries = 0;
    index->key_size = key_size;
    index->value_size = value_size;
    index->num_buckets = capacity;
    index->num_empty = capacity;
    index->bucket_size = index->key_size + index->value_size;
    index->lower_limit = get_lower_limit(index->num_buckets);
    index->upper_limit = get_upper_limit(index->num_buckets);
    index->min_empty = get_min_empty(index->num_buckets);

    index->buckets_buffer.buf = ((void*)0);

    for(i = 0; i < capacity; i++) {
        BUCKET_MARK_EMPTY(index, i);
    }
    return index;
}
