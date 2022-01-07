
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_12__ {int extra_data; scalar_t__ extra_data_size; TYPE_2__ last_delay; } ;
struct TYPE_11__ {scalar_t__ codec_type; scalar_t__ codec_id; scalar_t__ extradata_size; int extradata; } ;
struct TYPE_10__ {int nb_streams; int pb; TYPE_1__** streams; TYPE_5__* priv_data; } ;
struct TYPE_8__ {TYPE_4__* codecpar; } ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ APNGMuxContext ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_APNG ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int PNGSIG ;
 scalar_t__ USHRT_MAX ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_mallocz (scalar_t__) ;
 int av_reduce (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ;
 int avio_wb64 (int ,int ) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int apng_write_header(AVFormatContext *format_context)
{
    APNGMuxContext *apng = format_context->priv_data;
    AVCodecParameters *par = format_context->streams[0]->codecpar;

    if (format_context->nb_streams != 1 ||
        format_context->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_VIDEO ||
        format_context->streams[0]->codecpar->codec_id != AV_CODEC_ID_APNG) {
        av_log(format_context, AV_LOG_ERROR,
               "APNG muxer supports only a single video APNG stream.\n");
        return AVERROR(EINVAL);
    }

    if (apng->last_delay.num > USHRT_MAX || apng->last_delay.den > USHRT_MAX) {
        av_reduce(&apng->last_delay.num, &apng->last_delay.den,
                  apng->last_delay.num, apng->last_delay.den, USHRT_MAX);
        av_log(format_context, AV_LOG_WARNING,
               "Last frame delay is too precise. Reducing to %d/%d (%f).\n",
               apng->last_delay.num, apng->last_delay.den, (double)apng->last_delay.num / apng->last_delay.den);
    }

    avio_wb64(format_context->pb, PNGSIG);


    if (par->extradata_size) {
        apng->extra_data = av_mallocz(par->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!apng->extra_data)
            return AVERROR(ENOMEM);
        apng->extra_data_size = par->extradata_size;
        memcpy(apng->extra_data, par->extradata, par->extradata_size);
    }

    return 0;
}
