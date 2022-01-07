
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ num_entries; scalar_t__ upper_limit; int num_buckets; scalar_t__ num_empty; scalar_t__ min_empty; int key_size; int value_size; } ;
typedef TYPE_1__ HashIndex ;


 int * BUCKET_ADDR (TYPE_1__*,int) ;
 int BUCKET_IS_DELETED (TYPE_1__*,int) ;
 scalar_t__ BUCKET_IS_EMPTY (TYPE_1__*,int) ;
 int grow_size (int) ;
 int hashindex_index (TYPE_1__*,unsigned char const*) ;
 int hashindex_lookup (TYPE_1__*,unsigned char const*,int*) ;
 int hashindex_resize (TYPE_1__*,int) ;
 int memcpy (int *,unsigned char const*,int) ;

__attribute__((used)) static int
hashindex_set(HashIndex *index, const unsigned char *key, const unsigned char *value)
{
    int start_idx;
    int idx = hashindex_lookup(index, key, &start_idx);
    uint8_t *ptr;
    if(idx < 0)
    {
        if(index->num_entries > index->upper_limit) {
            if(!hashindex_resize(index, grow_size(index->num_buckets))) {
                return 0;
            }
            start_idx = hashindex_index(index, key);
        }
        idx = start_idx;
        while(!BUCKET_IS_EMPTY(index, idx) && !BUCKET_IS_DELETED(index, idx)) {
            idx++;
            if (idx >= index->num_buckets){
                idx -= index->num_buckets;
            }
        }
        if(BUCKET_IS_EMPTY(index, idx)){
            index->num_empty--;
            if(index->num_empty < index->min_empty) {

                if(!hashindex_resize(index, index->num_buckets)) {
                    return 0;
                }
            }
        }
        ptr = BUCKET_ADDR(index, idx);
        memcpy(ptr, key, index->key_size);
        memcpy(ptr + index->key_size, value, index->value_size);
        index->num_entries += 1;
    }
    else
    {
        memcpy(BUCKET_ADDR(index, idx) + index->key_size, value, index->value_size);
    }
    return 1;
}
