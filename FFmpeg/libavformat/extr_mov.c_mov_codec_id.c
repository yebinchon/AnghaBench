
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* codecpar; } ;
struct TYPE_4__ {scalar_t__ codec_type; scalar_t__ codec_id; int codec_tag; } ;
typedef TYPE_2__ AVStream ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_DATA ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int MKTAG (char,char,char,char) ;
 int av_bswap32 (int) ;
 int ff_codec_bmp_tags ;
 int ff_codec_get_id (int ,int) ;
 int ff_codec_movaudio_tags ;
 int ff_codec_movdata_tags ;
 int ff_codec_movsubtitle_tags ;
 int ff_codec_movvideo_tags ;
 int ff_codec_wav_tags ;

__attribute__((used)) static int mov_codec_id(AVStream *st, uint32_t format)
{
    int id = ff_codec_get_id(ff_codec_movaudio_tags, format);

    if (id <= 0 &&
        ((format & 0xFFFF) == 'm' + ('s' << 8) ||
         (format & 0xFFFF) == 'T' + ('S' << 8)))
        id = ff_codec_get_id(ff_codec_wav_tags, av_bswap32(format) & 0xFFFF);

    if (st->codecpar->codec_type != AVMEDIA_TYPE_VIDEO && id > 0) {
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    } else if (st->codecpar->codec_type != AVMEDIA_TYPE_AUDIO &&

               format && format != MKTAG('m','p','4','s')) {
        id = ff_codec_get_id(ff_codec_movvideo_tags, format);
        if (id <= 0)
            id = ff_codec_get_id(ff_codec_bmp_tags, format);
        if (id > 0)
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        else if (st->codecpar->codec_type == AVMEDIA_TYPE_DATA ||
                    (st->codecpar->codec_type == AVMEDIA_TYPE_SUBTITLE &&
                    st->codecpar->codec_id == AV_CODEC_ID_NONE)) {
            id = ff_codec_get_id(ff_codec_movsubtitle_tags, format);
            if (id > 0)
                st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
            else
                id = ff_codec_get_id(ff_codec_movdata_tags, format);
        }
    }

    st->codecpar->codec_tag = format;

    return id;
}
