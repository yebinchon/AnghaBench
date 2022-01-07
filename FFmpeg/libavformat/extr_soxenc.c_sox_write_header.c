
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ codec_id; size_t channels; int sample_rate; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int metadata; TYPE_1__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {size_t header_size; } ;
struct TYPE_9__ {TYPE_5__* codecpar; } ;
typedef TYPE_2__ SoXContext ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVDictionaryEntry ;
typedef TYPE_5__ AVCodecParameters ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_PCM_S32BE ;
 scalar_t__ AV_CODEC_ID_PCM_S32LE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 size_t FFALIGN (size_t,int) ;
 size_t SOX_FIXED_HDR ;
 TYPE_4__* av_dict_get (int ,char*,int *,int ) ;
 int av_double2int (int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_flush (int *) ;
 int avio_wb32 (int *,size_t) ;
 int avio_wb64 (int *,int ) ;
 int avio_wl32 (int *,size_t) ;
 int avio_wl64 (int *,int ) ;
 int avio_write (int *,int ,size_t) ;
 int ffio_fill (int *,int ,size_t) ;
 int ffio_wfourcc (int *,char*) ;
 size_t strlen (int ) ;

__attribute__((used)) static int sox_write_header(AVFormatContext *s)
{
    SoXContext *sox = s->priv_data;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVDictionaryEntry *comment;
    size_t comment_len = 0, comment_size;

    comment = av_dict_get(s->metadata, "comment", ((void*)0), 0);
    if (comment)
        comment_len = strlen(comment->value);
    comment_size = FFALIGN(comment_len, 8);

    sox->header_size = SOX_FIXED_HDR + comment_size;

    if (par->codec_id == AV_CODEC_ID_PCM_S32LE) {
        ffio_wfourcc(pb, ".SoX");
        avio_wl32(pb, sox->header_size);
        avio_wl64(pb, 0);
        avio_wl64(pb, av_double2int(par->sample_rate));
        avio_wl32(pb, par->channels);
        avio_wl32(pb, comment_size);
    } else if (par->codec_id == AV_CODEC_ID_PCM_S32BE) {
        ffio_wfourcc(pb, "XoS.");
        avio_wb32(pb, sox->header_size);
        avio_wb64(pb, 0);
        avio_wb64(pb, av_double2int(par->sample_rate));
        avio_wb32(pb, par->channels);
        avio_wb32(pb, comment_size);
    } else {
        av_log(s, AV_LOG_ERROR, "invalid codec; use pcm_s32le or pcm_s32be\n");
        return AVERROR(EINVAL);
    }

    if (comment_len)
        avio_write(pb, comment->value, comment_len);

    ffio_fill(pb, 0, comment_size - comment_len);

    avio_flush(pb);

    return 0;
}
