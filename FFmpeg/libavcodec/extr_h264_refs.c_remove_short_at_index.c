
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int short_ref_count; int ** short_ref; } ;
typedef int H264Picture ;
typedef TYPE_1__ H264Context ;


 int assert (int) ;
 int memmove (int **,int **,int) ;

__attribute__((used)) static void remove_short_at_index(H264Context *h, int i)
{
    assert(i >= 0 && i < h->short_ref_count);
    h->short_ref[i] = ((void*)0);
    if (--h->short_ref_count)
        memmove(&h->short_ref[i], &h->short_ref[i + 1],
                (h->short_ref_count - i) * sizeof(H264Picture*));
}
