
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct AVFormatContext {TYPE_2__** streams; TYPE_3__* priv_data; TYPE_4__* pb; } ;
typedef int int64_t ;
struct TYPE_12__ {int seekable; } ;
struct TYPE_11__ {size_t audio_stream_idx; int write_header; scalar_t__ waiting_pics; int * streaminfo; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int * extradata; } ;
typedef TYPE_3__ FlacMuxerContext ;
typedef TYPE_4__ AVIOContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_WARNING ;
 int FLAC_STREAMINFO_SIZE ;
 int SEEK_SET ;
 int av_log (struct AVFormatContext*,int ,char*) ;
 int avio_flush (TYPE_4__*) ;
 int avio_seek (TYPE_4__*,int,int ) ;
 int avio_tell (TYPE_4__*) ;
 int avio_write (TYPE_4__*,int *,int ) ;
 int flac_queue_flush (struct AVFormatContext*) ;

__attribute__((used)) static int flac_write_trailer(struct AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    int64_t file_size;
    FlacMuxerContext *c = s->priv_data;
    uint8_t *streaminfo = c->streaminfo ? c->streaminfo :
                                          s->streams[c->audio_stream_idx]->codecpar->extradata;

    if (c->waiting_pics) {
        av_log(s, AV_LOG_WARNING, "No packets were sent for some of the "
               "attached pictures.\n");
        flac_queue_flush(s);
    }

    if (!c->write_header || !streaminfo)
        return 0;

    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {

        file_size = avio_tell(pb);
        avio_seek(pb, 8, SEEK_SET);
        avio_write(pb, streaminfo, FLAC_STREAMINFO_SIZE);
        avio_seek(pb, file_size, SEEK_SET);
        avio_flush(pb);
    } else {
        av_log(s, AV_LOG_WARNING, "unable to rewrite FLAC header.\n");
    }

    return 0;
}
