
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* sys; } ;
struct TYPE_10__ {TYPE_3__* dv_demux; } ;
struct TYPE_9__ {int frame_size; } ;
typedef TYPE_2__ RawDVContext ;
typedef TYPE_3__ DVDemuxContext ;
typedef TYPE_4__ AVFormatContext ;


 int SEEK_SET ;
 scalar_t__ avio_seek (int ,int,int ) ;
 int dv_frame_offset (TYPE_4__*,TYPE_3__*,int,int) ;
 int ff_dv_offset_reset (TYPE_3__*,int) ;

__attribute__((used)) static int dv_read_seek(AVFormatContext *s, int stream_index,
                        int64_t timestamp, int flags)
{
    RawDVContext *r = s->priv_data;
    DVDemuxContext *c = r->dv_demux;
    int64_t offset = dv_frame_offset(s, c, timestamp, flags);

    if (avio_seek(s->pb, offset, SEEK_SET) < 0)
        return -1;

    ff_dv_offset_reset(c, offset / c->sys->frame_size);
    return 0;
}
