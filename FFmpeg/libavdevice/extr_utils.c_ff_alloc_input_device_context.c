
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int category; } ;
struct TYPE_10__ {int * priv_data; TYPE_1__* iformat; } ;
struct TYPE_9__ {scalar_t__ priv_data_size; TYPE_3__* priv_class; } ;
typedef TYPE_1__ AVInputFormat ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVClass ;


 int AVERROR (int ) ;
 int AV_IS_INPUT_DEVICE (int ) ;
 int EINVAL ;
 int ENOMEM ;
 TYPE_1__* av_find_input_format (char const*) ;
 int * av_mallocz (scalar_t__) ;
 int av_opt_set_defaults (int *) ;
 TYPE_2__* avformat_alloc_context () ;
 int avformat_free_context (TYPE_2__*) ;

int ff_alloc_input_device_context(AVFormatContext **avctx, AVInputFormat *iformat, const char *format)
{
    AVFormatContext *s;
    int ret = 0;

    *avctx = ((void*)0);
    if (!iformat && !format)
        return AVERROR(EINVAL);
    if (!(s = avformat_alloc_context()))
        return AVERROR(ENOMEM);

    if (!iformat)
        iformat = av_find_input_format(format);
    if (!iformat || !iformat->priv_class || !AV_IS_INPUT_DEVICE(iformat->priv_class->category)) {
        ret = AVERROR(EINVAL);
        goto error;
    }
    s->iformat = iformat;
    if (s->iformat->priv_data_size > 0) {
        s->priv_data = av_mallocz(s->iformat->priv_data_size);
        if (!s->priv_data) {
            ret = AVERROR(ENOMEM);
            goto error;
        }
        if (s->iformat->priv_class) {
            *(const AVClass**)s->priv_data= s->iformat->priv_class;
            av_opt_set_defaults(s->priv_data);
        }
    } else
        s->priv_data = ((void*)0);

    *avctx = s;
    return 0;
  error:
    avformat_free_context(s);
    return ret;
}
