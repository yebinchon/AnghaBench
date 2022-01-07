
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* f; } ;
struct TYPE_11__ {scalar_t__ long_ref_count; int short_ref_count; int default_ref; int ** short_ref; TYPE_6__ last_pic_for_ec; } ;
struct TYPE_10__ {int * data; } ;
typedef TYPE_2__ H264Context ;


 int assert (int) ;
 int ff_h264_ref_picture (TYPE_2__*,TYPE_6__*,int *) ;
 int ff_h264_unref_picture (TYPE_2__*,TYPE_6__*) ;
 int memset (int ,int ,int) ;
 int remove_long (TYPE_2__*,int,int ) ;
 int unreference_pic (TYPE_2__*,int *,int ) ;

void ff_h264_remove_all_refs(H264Context *h)
{
    int i;

    for (i = 0; i < 16; i++) {
        remove_long(h, i, 0);
    }
    assert(h->long_ref_count == 0);

    if (h->short_ref_count && !h->last_pic_for_ec.f->data[0]) {
        ff_h264_unref_picture(h, &h->last_pic_for_ec);
        ff_h264_ref_picture(h, &h->last_pic_for_ec, h->short_ref[0]);
    }

    for (i = 0; i < h->short_ref_count; i++) {
        unreference_pic(h, h->short_ref[i], 0);
        h->short_ref[i] = ((void*)0);
    }
    h->short_ref_count = 0;

    memset(h->default_ref, 0, sizeof(h->default_ref));
}
