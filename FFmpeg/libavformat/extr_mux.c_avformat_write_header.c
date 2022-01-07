
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int error; } ;
struct TYPE_13__ {TYPE_2__* internal; TYPE_8__* pb; TYPE_1__* oformat; } ;
struct TYPE_12__ {int initialized; int streams_initialized; } ;
struct TYPE_11__ {int flags; int (* write_header ) (TYPE_3__*) ;} ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDictionary ;


 int AVFMT_NOFILE ;
 int AVIO_DATA_MARKER_HEADER ;
 int AVIO_DATA_MARKER_UNKNOWN ;
 int AV_NOPTS_VALUE ;
 int avformat_init_output (TYPE_3__*,int **) ;
 int avio_write_marker (TYPE_8__*,int ,int ) ;
 int deinit_muxer (TYPE_3__*) ;
 int flush_if_needed (TYPE_3__*) ;
 int init_pts (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

int avformat_write_header(AVFormatContext *s, AVDictionary **options)
{
    int ret = 0;
    int already_initialized = s->internal->initialized;
    int streams_already_initialized = s->internal->streams_initialized;

    if (!already_initialized)
        if ((ret = avformat_init_output(s, options)) < 0)
            return ret;

    if (!(s->oformat->flags & AVFMT_NOFILE) && s->pb)
        avio_write_marker(s->pb, AV_NOPTS_VALUE, AVIO_DATA_MARKER_HEADER);
    if (s->oformat->write_header) {
        ret = s->oformat->write_header(s);
        if (ret >= 0 && s->pb && s->pb->error < 0)
            ret = s->pb->error;
        if (ret < 0)
            goto fail;
        flush_if_needed(s);
    }
    if (!(s->oformat->flags & AVFMT_NOFILE) && s->pb)
        avio_write_marker(s->pb, AV_NOPTS_VALUE, AVIO_DATA_MARKER_UNKNOWN);

    if (!s->internal->streams_initialized) {
        if ((ret = init_pts(s)) < 0)
            goto fail;
    }

    return streams_already_initialized;

fail:
    deinit_muxer(s);
    return ret;
}
