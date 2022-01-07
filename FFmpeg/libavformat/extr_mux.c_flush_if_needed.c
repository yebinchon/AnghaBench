
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ error; } ;
struct TYPE_7__ {int flush_packets; int flags; TYPE_4__* pb; TYPE_1__* oformat; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMT_FLAG_FLUSH_PACKETS ;
 int AVFMT_NOFILE ;
 int AVIO_DATA_MARKER_FLUSH_POINT ;
 int AV_NOPTS_VALUE ;
 int avio_flush (TYPE_4__*) ;
 int avio_write_marker (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void flush_if_needed(AVFormatContext *s)
{
    if (s->pb && s->pb->error >= 0) {
        if (s->flush_packets == 1 || s->flags & AVFMT_FLAG_FLUSH_PACKETS)
            avio_flush(s->pb);
        else if (s->flush_packets && !(s->oformat->flags & AVFMT_NOFILE))
            avio_write_marker(s->pb, AV_NOPTS_VALUE, AVIO_DATA_MARKER_FLUSH_POINT);
    }
}
