
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int num_buckets; int num_entries; int bucket_size; } ;
typedef TYPE_1__ HashIndex ;


 int BUCKET_ADDR (TYPE_1__*,int) ;
 scalar_t__ BUCKET_IS_DELETED (TYPE_1__*,int) ;
 scalar_t__ BUCKET_IS_EMPTY (TYPE_1__*,int) ;
 int memcpy (int ,int ,int) ;
 int memmove (int ,int ,int) ;

__attribute__((used)) static uint64_t
hashindex_compact(HashIndex *index)
{
    int idx = 0;
    int start_idx;
    int begin_used_idx;
    int empty_slot_count, count, buckets_to_copy;
    int compact_tail_idx = 0;
    uint64_t saved_size = (index->num_buckets - index->num_entries) * (uint64_t)index->bucket_size;

    if(index->num_buckets - index->num_entries == 0) {

        return 0;
    }

    while(idx < index->num_buckets) {

        start_idx = idx;
        while((BUCKET_IS_EMPTY(index, idx) || BUCKET_IS_DELETED(index, idx)) && idx < index->num_buckets) {
            idx++;
        }


        count = empty_slot_count = idx - start_idx;
        begin_used_idx = idx;

        if(!empty_slot_count) {

            memmove(BUCKET_ADDR(index, compact_tail_idx), BUCKET_ADDR(index, idx), index->bucket_size);
            idx++;
            compact_tail_idx++;
            continue;
        }



        while(!(BUCKET_IS_EMPTY(index, idx) || BUCKET_IS_DELETED(index, idx)) && empty_slot_count && idx < index->num_buckets) {
            idx++;
            empty_slot_count--;
        }

        buckets_to_copy = count - empty_slot_count;

        if(!buckets_to_copy) {

            break;
        }

        memcpy(BUCKET_ADDR(index, compact_tail_idx), BUCKET_ADDR(index, begin_used_idx), buckets_to_copy * index->bucket_size);
        compact_tail_idx += buckets_to_copy;
    }

    index->num_buckets = index->num_entries;
    return saved_size;
}
