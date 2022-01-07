
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_10__ {int spdif; } ;
typedef TYPE_3__ WAVDemuxContext ;
struct TYPE_11__ {int pb; TYPE_2__** streams; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int codec_tag; int codec_id; } ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVPROBE_SCORE_EXTENSION ;
 int AV_LOG_WARNING ;
 scalar_t__ CONFIG_SPDIF_DEMUXER ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_free (int *) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int * av_malloc (int) ;
 int avio_read (int ,int *,int) ;
 int avio_seek (int ,int ,int ) ;
 int avio_tell (int ) ;
 int ff_spdif_probe (int *,int,int*) ;
 int ffio_ensure_seekback (int ,int) ;

__attribute__((used)) static void set_spdif(AVFormatContext *s, WAVDemuxContext *wav)
{
    if (CONFIG_SPDIF_DEMUXER && s->streams[0]->codecpar->codec_tag == 1) {
        enum AVCodecID codec;
        int len = 1<<16;
        int ret = ffio_ensure_seekback(s->pb, len);

        if (ret >= 0) {
            uint8_t *buf = av_malloc(len);
            if (!buf) {
                ret = AVERROR(ENOMEM);
            } else {
                int64_t pos = avio_tell(s->pb);
                len = ret = avio_read(s->pb, buf, len);
                if (len >= 0) {
                    ret = ff_spdif_probe(buf, len, &codec);
                    if (ret > AVPROBE_SCORE_EXTENSION) {
                        s->streams[0]->codecpar->codec_id = codec;
                        wav->spdif = 1;
                    }
                }
                avio_seek(s->pb, pos, SEEK_SET);
                av_free(buf);
            }
        }

        if (ret < 0)
            av_log(s, AV_LOG_WARNING, "Cannot check for SPDIF\n");
    }
}
