
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct ogg_stream {scalar_t__ private; int header; struct ogg_codec const* codec; int buf; int bufsize; void* serial; } ;
typedef struct ogg_codec const ogg_codec ;
struct ogg {int nstreams; struct ogg_stream* streams; TYPE_2__* state; } ;
typedef int magic ;
typedef int int64_t ;
struct TYPE_15__ {int seekable; } ;
struct TYPE_14__ {TYPE_7__* pb; struct ogg* priv_data; } ;
struct TYPE_13__ {TYPE_1__* streams; } ;
struct TYPE_12__ {scalar_t__ private; } ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_ERROR ;
 int SEEK_SET ;
 int av_freep (scalar_t__*) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_read (TYPE_7__*,int *,int) ;
 int avio_seek (TYPE_7__*,int ,int ) ;
 int avio_skip (TYPE_7__*,int) ;
 int avio_tell (TYPE_7__*) ;
 int avpriv_report_missing_feature (TYPE_3__*,char*) ;
 int buf ;
 int bufsize ;
 int memset (struct ogg_stream*,int ,int) ;
 struct ogg_codec const* ogg_find_codec (int *,int) ;
 int ogg_new_stream (TYPE_3__*,void*) ;

__attribute__((used)) static int ogg_replace_stream(AVFormatContext *s, uint32_t serial, int nsegs)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os;
    const struct ogg_codec *codec;
    int i = 0;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        uint8_t magic[8];
        int64_t pos = avio_tell(s->pb);
        avio_skip(s->pb, nsegs);
        avio_read(s->pb, magic, sizeof(magic));
        avio_seek(s->pb, pos, SEEK_SET);
        codec = ogg_find_codec(magic, sizeof(magic));
        if (!codec) {
            av_log(s, AV_LOG_ERROR, "Cannot identify new stream\n");
            return AVERROR_INVALIDDATA;
        }
        for (i = 0; i < ogg->nstreams; i++) {
            if (ogg->streams[i].codec == codec)
                break;
        }
        if (i >= ogg->nstreams)
            return ogg_new_stream(s, serial);
    } else if (ogg->nstreams != 1) {
        avpriv_report_missing_feature(s, "Changing stream parameters in multistream ogg");
        return AVERROR_PATCHWELCOME;
    }

    os = &ogg->streams[i];

    os->serial = serial;
    return i;
}
