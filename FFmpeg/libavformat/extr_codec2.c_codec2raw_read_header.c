
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int extradata; } ;
struct TYPE_15__ {TYPE_1__* internal; TYPE_2__* priv_data; } ;
struct TYPE_14__ {TYPE_5__* codecpar; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {scalar_t__ data_offset; } ;
typedef TYPE_2__ Codec2Context ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVPRIV_CODEC2_EXTRADATA_SIZE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_log (TYPE_4__*,int ,char*) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_codec2_make_extradata (int ,scalar_t__) ;
 int codec2_read_header_common (TYPE_4__*,TYPE_3__*) ;
 int ff_alloc_extradata (TYPE_5__*,int ) ;

__attribute__((used)) static int codec2raw_read_header(AVFormatContext *s)
{
    Codec2Context *c2 = s->priv_data;
    AVStream *st;
    int ret;

    if (c2->mode < 0) {

        av_log(s, AV_LOG_ERROR, "-mode must be set in order to make sense of raw codec2 files\n");
        return AVERROR(EINVAL);
    }

    st = avformat_new_stream(s, ((void*)0));
    if (!st) {
        return AVERROR(ENOMEM);
    }

    ret = ff_alloc_extradata(st->codecpar, AVPRIV_CODEC2_EXTRADATA_SIZE);
    if (ret) {
        return ret;
    }

    s->internal->data_offset = 0;
    avpriv_codec2_make_extradata(st->codecpar->extradata, c2->mode);

    return codec2_read_header_common(s, st);
}
