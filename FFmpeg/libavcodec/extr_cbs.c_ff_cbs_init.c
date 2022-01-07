
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_8__ {int trace_level; scalar_t__ trace_enable; int * decompose_unit_types; void* priv_data; TYPE_1__ const* codec; void* log_ctx; } ;
struct TYPE_7__ {int codec_id; int priv_data_size; } ;
typedef TYPE_1__ CodedBitstreamType ;
typedef TYPE_2__ CodedBitstreamContext ;


 int AVERROR (int ) ;
 int AV_LOG_TRACE ;
 int EINVAL ;
 int ENOMEM ;
 int FF_ARRAY_ELEMS (TYPE_1__**) ;
 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;
 TYPE_1__** cbs_type_table ;

int ff_cbs_init(CodedBitstreamContext **ctx_ptr,
                enum AVCodecID codec_id, void *log_ctx)
{
    CodedBitstreamContext *ctx;
    const CodedBitstreamType *type;
    int i;

    type = ((void*)0);
    for (i = 0; i < FF_ARRAY_ELEMS(cbs_type_table); i++) {
        if (cbs_type_table[i]->codec_id == codec_id) {
            type = cbs_type_table[i];
            break;
        }
    }
    if (!type)
        return AVERROR(EINVAL);

    ctx = av_mallocz(sizeof(*ctx));
    if (!ctx)
        return AVERROR(ENOMEM);

    ctx->log_ctx = log_ctx;
    ctx->codec = type;

    ctx->priv_data = av_mallocz(ctx->codec->priv_data_size);
    if (!ctx->priv_data) {
        av_freep(&ctx);
        return AVERROR(ENOMEM);
    }

    ctx->decompose_unit_types = ((void*)0);

    ctx->trace_enable = 0;
    ctx->trace_level = AV_LOG_TRACE;

    *ctx_ptr = ctx;
    return 0;
}
