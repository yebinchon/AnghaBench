
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int packet_size; TYPE_1__* internal; int pb; } ;
struct TYPE_4__ {scalar_t__ data_offset; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVSEEK_FLAG_BACKWARD ;
 int FFMAX (int ,int) ;
 int SEEK_SET ;
 scalar_t__ avio_seek (int ,scalar_t__,int ) ;

__attribute__((used)) static int yuv4_read_seek(AVFormatContext *s, int stream_index,
                          int64_t pts, int flags)
{
    int64_t pos;

    if (flags & AVSEEK_FLAG_BACKWARD)
        pts = FFMAX(0, pts - 1);
    if (pts < 0)
        return -1;
    pos = pts * s->packet_size;

    if (avio_seek(s->pb, pos + s->internal->data_offset, SEEK_SET) < 0)
        return -1;
    return 0;
}
