
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int member_1; int member_0; } ;
struct TYPE_15__ {int sample_size; int channels; int sample_step; scalar_t__ device; TYPE_5__ sample_format; int sample_rate; scalar_t__ list_devices; } ;
typedef TYPE_1__ al_data ;
struct TYPE_20__ {int channels; int codec_id; } ;
struct TYPE_18__ {int channels; int codec_id; int sample_rate; int codec_type; } ;
struct TYPE_17__ {scalar_t__* url; TYPE_1__* priv_data; } ;
struct TYPE_16__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;
typedef TYPE_5__ ALCenum ;






 int AVERROR (int ) ;
 int AVERROR_EXIT ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int al_get_error (scalar_t__,char const**) ;
 int alcCaptureCloseDevice (scalar_t__) ;
 scalar_t__ alcCaptureOpenDevice (scalar_t__*,int ,TYPE_5__,int ) ;
 int alcCaptureStart (scalar_t__) ;
 int av_get_bits_per_sample (int ) ;
 int av_log (TYPE_3__*,int ,char*,char const*) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 TYPE_8__* get_al_format_info (TYPE_5__) ;
 int print_al_capture_devices (TYPE_3__*) ;

__attribute__((used)) static int read_header(AVFormatContext *ctx)
{
    al_data *ad = ctx->priv_data;
    static const ALCenum sample_formats[2][2] = {
        { 130, 128 },
        { 131, 129 }
    };
    int error = 0;
    const char *error_msg;
    AVStream *st = ((void*)0);
    AVCodecParameters *par = ((void*)0);

    if (ad->list_devices) {
        print_al_capture_devices(ctx);
        return AVERROR_EXIT;
    }

    ad->sample_format = sample_formats[ad->sample_size/8-1][ad->channels-1];


    ad->device =
        alcCaptureOpenDevice(ctx->url[0] ? ctx->url : ((void*)0),
                             ad->sample_rate,
                             ad->sample_format,
                             ad->sample_rate);

    if (error = al_get_error(ad->device, &error_msg)) goto fail;


    if (!(st = avformat_new_stream(ctx, ((void*)0)))) {
        error = AVERROR(ENOMEM);
        goto fail;
    }


    avpriv_set_pts_info(st, 64, 1, 1000000);


    par = st->codecpar;
    par->codec_type = AVMEDIA_TYPE_AUDIO;
    par->sample_rate = ad->sample_rate;
    par->channels = get_al_format_info(ad->sample_format)->channels;
    par->codec_id = get_al_format_info(ad->sample_format)->codec_id;


    ad->sample_step = (av_get_bits_per_sample(get_al_format_info(ad->sample_format)->codec_id) *
                       get_al_format_info(ad->sample_format)->channels) / 8;


    alcCaptureStart(ad->device);

    return 0;

fail:

    if (ad->device)
        alcCaptureCloseDevice(ad->device);
    if (error_msg)
        av_log(ctx, AV_LOG_ERROR, "Cannot open device: %s\n", error_msg);
    return error;
}
