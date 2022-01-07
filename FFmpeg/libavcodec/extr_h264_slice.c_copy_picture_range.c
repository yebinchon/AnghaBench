
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* DPB; } ;
typedef int H264Picture ;
typedef TYPE_1__ H264Context ;


 int H264_MAX_PICTURE_COUNT ;
 scalar_t__ IN_RANGE (int *,TYPE_1__*,int) ;
 int * REBASE_PICTURE (int *,TYPE_1__*,TYPE_1__*) ;
 int av_assert1 (int) ;

__attribute__((used)) static void copy_picture_range(H264Picture **to, H264Picture **from, int count,
                               H264Context *new_base,
                               H264Context *old_base)
{
    int i;

    for (i = 0; i < count; i++) {
        av_assert1(!from[i] ||
                   IN_RANGE(from[i], old_base, 1) ||
                   IN_RANGE(from[i], old_base->DPB, H264_MAX_PICTURE_COUNT));
        to[i] = REBASE_PICTURE(from[i], new_base, old_base);
    }
}
