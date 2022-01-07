
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* DPB; } ;
struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_5__ {int * buf; } ;
typedef TYPE_3__ H264Context ;


 int AVERROR_INVALIDDATA ;
 int H264_MAX_PICTURE_COUNT ;

__attribute__((used)) static int find_unused_picture(H264Context *h)
{
    int i;

    for (i = 0; i < H264_MAX_PICTURE_COUNT; i++) {
        if (!h->DPB[i].f->buf[0])
            return i;
    }
    return AVERROR_INVALIDDATA;
}
