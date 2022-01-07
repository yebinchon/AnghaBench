
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int color_primaries; int matrix_coefficients; } ;
typedef TYPE_1__ ProresMetadataContext ;
typedef TYPE_2__ AVBSFContext ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*,int) ;

__attribute__((used)) static int prores_metadata_init(AVBSFContext *bsf)
{
    ProresMetadataContext *ctx = bsf->priv_data;

    switch (ctx->color_primaries) {
    case -1:
    case 0:
    case 134:
    case 135:
    case 133:
    case 136:
    case 132:
    case 131:
        break;
    default:
        av_log(bsf, AV_LOG_ERROR, "Color primaries %d is not a valid value\n", ctx->color_primaries);
        return AVERROR(EINVAL);
    }

    switch (ctx->matrix_coefficients) {
    case -1:
    case 0:
    case 129:
    case 128:
    case 130:
        break;
    default:
        av_log(bsf, AV_LOG_ERROR, "Colorspace %d is not a valid value\n", ctx->matrix_coefficients);
        return AVERROR(EINVAL);
    }

    return 0;
}
