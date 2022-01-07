
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {int seekable; } ;
struct TYPE_17__ {TYPE_8__* pb; int metadata; TYPE_2__* iformat; } ;
struct TYPE_16__ {int need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_15__ {int raw_codec_id; } ;
struct TYPE_14__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVSTREAM_PARSE_FULL_RAW ;
 int AV_DICT_IGNORE_SUFFIX ;
 int ENOMEM ;
 int SEEK_SET ;
 int adts_aac_resync (TYPE_4__*) ;
 int av_dict_get (int ,char*,int *,int ) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_seek (TYPE_8__*,int ,int ) ;
 int avio_tell (TYPE_8__*) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int ff_ape_parse_tag (TYPE_4__*) ;
 int ff_id3v1_read (TYPE_4__*) ;

__attribute__((used)) static int adts_aac_read_header(AVFormatContext *s)
{
    AVStream *st;
    int ret;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = s->iformat->raw_codec_id;
    st->need_parsing = AVSTREAM_PARSE_FULL_RAW;

    ff_id3v1_read(s);
    if ((s->pb->seekable & AVIO_SEEKABLE_NORMAL) &&
        !av_dict_get(s->metadata, "", ((void*)0), AV_DICT_IGNORE_SUFFIX)) {
        int64_t cur = avio_tell(s->pb);
        ff_ape_parse_tag(s);
        avio_seek(s->pb, cur, SEEK_SET);
    }

    ret = adts_aac_resync(s);
    if (ret < 0)
        return ret;


    avpriv_set_pts_info(st, 64, 1, 28224000);

    return 0;
}
