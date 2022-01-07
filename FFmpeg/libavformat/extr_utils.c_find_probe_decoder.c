
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_8__ {int capabilities; int id; } ;
typedef int AVStream ;
typedef int AVFormatContext ;
typedef TYPE_1__ AVCodec ;


 int AV_CODEC_CAP_AVOID_PROBING ;
 int AV_CODEC_CAP_EXPERIMENTAL ;
 int AV_CODEC_ID_H264 ;
 scalar_t__ av_codec_is_decoder (TYPE_1__ const*) ;
 TYPE_1__* av_codec_next (TYPE_1__ const*) ;
 TYPE_1__ const* avcodec_find_decoder_by_name (char*) ;
 TYPE_1__* find_decoder (int *,int const*,int) ;

__attribute__((used)) static const AVCodec *find_probe_decoder(AVFormatContext *s, const AVStream *st, enum AVCodecID codec_id)
{
    const AVCodec *codec;
    codec = find_decoder(s, st, codec_id);
    if (!codec)
        return ((void*)0);

    if (codec->capabilities & AV_CODEC_CAP_AVOID_PROBING) {
        const AVCodec *probe_codec = ((void*)0);
        while (probe_codec = av_codec_next(probe_codec)) {
            if (probe_codec->id == codec_id &&
                    av_codec_is_decoder(probe_codec) &&
                    !(probe_codec->capabilities & (AV_CODEC_CAP_AVOID_PROBING | AV_CODEC_CAP_EXPERIMENTAL))) {
                return probe_codec;
            }
        }
    }

    return codec;
}
