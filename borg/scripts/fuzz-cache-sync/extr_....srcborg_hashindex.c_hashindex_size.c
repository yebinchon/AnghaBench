
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_buckets; int bucket_size; } ;
typedef TYPE_1__ HashIndex ;
typedef int HashHeader ;



__attribute__((used)) static int
hashindex_size(HashIndex *index)
{
    return sizeof(HashHeader) + index->num_buckets * index->bucket_size;
}
