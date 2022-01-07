
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char uint8_t ;
typedef int mimetype ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_17__ {int pb; } ;
struct TYPE_16__ {int flags; int stream_index; int member_0; } ;
struct TYPE_15__ {int metadata; TYPE_4__ attached_pic; int index; TYPE_1__* codecpar; int disposition; } ;
struct TYPE_14__ {scalar_t__ id; int str; } ;
struct TYPE_13__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ CodecMime ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_NONE ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_DISPOSITION_ATTACHED_PIC ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_PKT_FLAG_KEY ;
 int ENOMEM ;
 int FF_ARRAY_ELEMS (char**) ;
 int av_dict_set (int *,char*,char*,int ) ;
 int av_freep (char**) ;
 int av_get_packet (int ,TYPE_4__*,int) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 char* av_malloc (int) ;
 int av_packet_unref (TYPE_4__*) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 scalar_t__ avio_get_str16le (int ,int,char*,int) ;
 int avio_r8 (int ) ;
 int avio_rl32 (int ) ;
 TYPE_2__* ff_id3v2_mime_tags ;
 char** ff_id3v2_picture_types ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int asf_read_picture(AVFormatContext *s, int len)
{
    AVPacket pkt = { 0 };
    const CodecMime *mime = ff_id3v2_mime_tags;
    enum AVCodecID id = AV_CODEC_ID_NONE;
    char mimetype[64];
    uint8_t *desc = ((void*)0);
    AVStream *st = ((void*)0);
    int ret, type, picsize, desc_len;


    if (len < 1 + 4 + 2 + 2) {
        av_log(s, AV_LOG_ERROR, "Invalid attached picture size: %d.\n", len);
        return AVERROR_INVALIDDATA;
    }


    type = avio_r8(s->pb);
    len--;
    if (type >= FF_ARRAY_ELEMS(ff_id3v2_picture_types) || type < 0) {
        av_log(s, AV_LOG_WARNING, "Unknown attached picture type: %d.\n", type);
        type = 0;
    }


    picsize = avio_rl32(s->pb);
    len -= 4;


    len -= avio_get_str16le(s->pb, len, mimetype, sizeof(mimetype));
    while (mime->id != AV_CODEC_ID_NONE) {
        if (!strncmp(mime->str, mimetype, sizeof(mimetype))) {
            id = mime->id;
            break;
        }
        mime++;
    }
    if (id == AV_CODEC_ID_NONE) {
        av_log(s, AV_LOG_ERROR, "Unknown attached picture mimetype: %s.\n",
               mimetype);
        return 0;
    }

    if (picsize >= len) {
        av_log(s, AV_LOG_ERROR, "Invalid attached picture data size: %d >= %d.\n",
               picsize, len);
        return AVERROR_INVALIDDATA;
    }


    desc_len = (len - picsize) * 2 + 1;
    desc = av_malloc(desc_len);
    if (!desc)
        return AVERROR(ENOMEM);
    len -= avio_get_str16le(s->pb, len - picsize, desc, desc_len);

    ret = av_get_packet(s->pb, &pkt, picsize);
    if (ret < 0)
        goto fail;

    st = avformat_new_stream(s, ((void*)0));
    if (!st) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    st->disposition |= AV_DISPOSITION_ATTACHED_PIC;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = id;
    st->attached_pic = pkt;
    st->attached_pic.stream_index = st->index;
    st->attached_pic.flags |= AV_PKT_FLAG_KEY;

    if (*desc)
        av_dict_set(&st->metadata, "title", desc, AV_DICT_DONT_STRDUP_VAL);
    else
        av_freep(&desc);

    av_dict_set(&st->metadata, "comment", ff_id3v2_picture_types[type], 0);

    return 0;

fail:
    av_freep(&desc);
    av_packet_unref(&pkt);
    return ret;
}
