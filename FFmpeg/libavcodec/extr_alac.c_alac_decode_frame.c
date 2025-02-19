
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AlacRawDataBlockType { ____Placeholder_AlacRawDataBlockType } AlacRawDataBlockType ;
struct TYPE_11__ {int channels; scalar_t__ nb_samples; int gb; } ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ ALACContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int TYPE_CPE ;
 int TYPE_END ;
 int TYPE_LFE ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int avpriv_report_missing_feature (TYPE_2__*,char*,int) ;
 int decode_element (TYPE_2__*,int *,int,int) ;
 int** ff_alac_channel_layout_offsets ;
 int get_bits (int *,int) ;
 int get_bits_count (int *) ;
 int get_bits_left (int *) ;
 int init_get_bits8 (int *,int ,int) ;

__attribute__((used)) static int alac_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    ALACContext *alac = avctx->priv_data;
    AVFrame *frame = data;
    enum AlacRawDataBlockType element;
    int channels;
    int ch, ret, got_end;

    if ((ret = init_get_bits8(&alac->gb, avpkt->data, avpkt->size)) < 0)
        return ret;

    got_end = 0;
    alac->nb_samples = 0;
    ch = 0;
    while (get_bits_left(&alac->gb) >= 3) {
        element = get_bits(&alac->gb, 3);
        if (element == TYPE_END) {
            got_end = 1;
            break;
        }
        if (element > TYPE_CPE && element != TYPE_LFE) {
            avpriv_report_missing_feature(avctx, "Syntax element %d", element);
            return AVERROR_PATCHWELCOME;
        }

        channels = (element == TYPE_CPE) ? 2 : 1;
        if (ch + channels > alac->channels ||
            ff_alac_channel_layout_offsets[alac->channels - 1][ch] + channels > alac->channels) {
            av_log(avctx, AV_LOG_ERROR, "invalid element channel count\n");
            return AVERROR_INVALIDDATA;
        }

        ret = decode_element(avctx, frame,
                             ff_alac_channel_layout_offsets[alac->channels - 1][ch],
                             channels);
        if (ret < 0 && get_bits_left(&alac->gb))
            return ret;

        ch += channels;
    }
    if (!got_end) {
        av_log(avctx, AV_LOG_ERROR, "no end tag found. incomplete packet.\n");
        return AVERROR_INVALIDDATA;
    }

    if (avpkt->size * 8 - get_bits_count(&alac->gb) > 8) {
        av_log(avctx, AV_LOG_ERROR, "Error : %d bits left\n",
               avpkt->size * 8 - get_bits_count(&alac->gb));
    }

    if (alac->channels == ch && alac->nb_samples)
        *got_frame_ptr = 1;
    else
        av_log(avctx, AV_LOG_WARNING, "Failed to decode all channels\n");

    return avpkt->size;
}
