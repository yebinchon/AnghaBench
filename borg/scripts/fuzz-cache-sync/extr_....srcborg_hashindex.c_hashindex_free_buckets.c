
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buf; } ;
struct TYPE_4__ {int buckets; TYPE_3__ buckets_buffer; } ;
typedef TYPE_1__ HashIndex ;


 int PyBuffer_Release (TYPE_3__*) ;
 int free (int ) ;

__attribute__((used)) static void
hashindex_free_buckets(HashIndex *index)
{

    if(index->buckets_buffer.buf) {
        PyBuffer_Release(&index->buckets_buffer);
    } else

    {
        free(index->buckets);
    }
}
