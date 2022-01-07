
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int reference; TYPE_1__* f; } ;
struct TYPE_7__ {TYPE_5__* DPB; TYPE_5__* cur_pic_ptr; } ;
struct TYPE_6__ {scalar_t__* buf; } ;
typedef TYPE_2__ H264Context ;


 int H264_MAX_PICTURE_COUNT ;
 int ff_h264_unref_picture (TYPE_2__*,TYPE_5__*) ;

__attribute__((used)) static void release_unused_pictures(H264Context *h, int remove_current)
{
    int i;


    for (i = 0; i < H264_MAX_PICTURE_COUNT; i++) {
        if (h->DPB[i].f->buf[0] && !h->DPB[i].reference &&
            (remove_current || &h->DPB[i] != h->cur_pic_ptr)) {
            ff_h264_unref_picture(h, &h->DPB[i]);
        }
    }
}
