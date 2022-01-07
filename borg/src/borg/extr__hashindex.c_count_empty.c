
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_buckets; } ;
typedef TYPE_1__ HashIndex ;


 scalar_t__ BUCKET_IS_EMPTY (TYPE_1__*,int) ;

int
count_empty(HashIndex *index)
{


    int i, count = 0, capacity = index->num_buckets;
    for(i = 0; i < capacity; i++) {
        if(BUCKET_IS_EMPTY(index, i))
            count++;
    }
    return count;
}
