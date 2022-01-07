
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int pad_idx; TYPE_3__* filter_ctx; } ;
struct TYPE_15__ {TYPE_2__* ist; } ;
struct TYPE_14__ {int input_pads; } ;
struct TYPE_13__ {TYPE_1__* st; int file_index; int dec; } ;
struct TYPE_12__ {int index; } ;
typedef TYPE_4__ InputFilter ;
typedef int FilterGraph ;
typedef TYPE_5__ AVFilterInOut ;


 int AVERROR_DECODER_NOT_FOUND ;


 int AV_LOG_ERROR ;
 int av_assert0 (int ) ;
 int av_log (int *,int ,char*,int ,int ) ;
 int avfilter_pad_get_type (int ,int ) ;
 int configure_input_audio_filter (int *,TYPE_4__*,TYPE_5__*) ;
 int configure_input_video_filter (int *,TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int configure_input_filter(FilterGraph *fg, InputFilter *ifilter,
                                  AVFilterInOut *in)
{
    if (!ifilter->ist->dec) {
        av_log(((void*)0), AV_LOG_ERROR,
               "No decoder for stream #%d:%d, filtering impossible\n",
               ifilter->ist->file_index, ifilter->ist->st->index);
        return AVERROR_DECODER_NOT_FOUND;
    }
    switch (avfilter_pad_get_type(in->filter_ctx->input_pads, in->pad_idx)) {
    case 128: return configure_input_video_filter(fg, ifilter, in);
    case 129: return configure_input_audio_filter(fg, ifilter, in);
    default: av_assert0(0);
    }
}
