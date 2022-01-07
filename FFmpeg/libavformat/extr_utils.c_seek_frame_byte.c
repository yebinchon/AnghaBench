
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int io_repositioned; int pb; TYPE_1__* internal; } ;
struct TYPE_4__ {scalar_t__ data_offset; } ;
typedef TYPE_2__ AVFormatContext ;


 int SEEK_SET ;
 int avio_seek (int ,scalar_t__,int ) ;
 scalar_t__ avio_size (int ) ;

__attribute__((used)) static int seek_frame_byte(AVFormatContext *s, int stream_index,
                           int64_t pos, int flags)
{
    int64_t pos_min, pos_max;

    pos_min = s->internal->data_offset;
    pos_max = avio_size(s->pb) - 1;

    if (pos < pos_min)
        pos = pos_min;
    else if (pos > pos_max)
        pos = pos_max;

    avio_seek(s->pb, pos, SEEK_SET);

    s->io_repositioned = 1;

    return 0;
}
