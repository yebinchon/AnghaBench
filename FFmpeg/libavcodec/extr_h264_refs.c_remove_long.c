
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int long_ref_count; TYPE_1__** long_ref; } ;
struct TYPE_7__ {int long_ref; } ;
typedef TYPE_1__ H264Picture ;
typedef TYPE_2__ H264Context ;


 int assert (int) ;
 scalar_t__ unreference_pic (TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static H264Picture *remove_long(H264Context *h, int i, int ref_mask)
{
    H264Picture *pic;

    pic = h->long_ref[i];
    if (pic) {
        if (unreference_pic(h, pic, ref_mask)) {
            assert(h->long_ref[i]->long_ref == 1);
            h->long_ref[i]->long_ref = 0;
            h->long_ref[i] = ((void*)0);
            h->long_ref_count--;
        }
    }

    return pic;
}
