
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ctx_flags; int pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int video_stream_index; int audio_stream_index; int filesize; scalar_t__ read_chunk; scalar_t__ framerate; int fps; } ;
typedef TYPE_1__ CDXLDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMTCTX_NOHEADER ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*,scalar_t__) ;
 int av_parse_video_rate (int *,scalar_t__) ;
 int avio_size (int ) ;

__attribute__((used)) static int cdxl_read_header(AVFormatContext *s)
{
    CDXLDemuxContext *cdxl = s->priv_data;
    int ret;

    if (cdxl->framerate && (ret = av_parse_video_rate(&cdxl->fps, cdxl->framerate)) < 0) {
        av_log(s, AV_LOG_ERROR,
               "Could not parse framerate: %s.\n", cdxl->framerate);
        return ret;
    }

    cdxl->read_chunk = 0;
    cdxl->video_stream_index = -1;
    cdxl->audio_stream_index = -1;

    cdxl->filesize = avio_size(s->pb);

    s->ctx_flags |= AVFMTCTX_NOHEADER;

    return 0;
}
