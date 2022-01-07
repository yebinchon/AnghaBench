
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int height; int width; TYPE_2__* priv_data; } ;
struct TYPE_8__ {TYPE_1__* display_definition; } ;
struct TYPE_7__ {int version; void* x; void* y; void* height; void* width; } ;
typedef TYPE_1__ DVBSubDisplayDefinition ;
typedef TYPE_2__ DVBSubContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 TYPE_1__* av_mallocz (int) ;
 void* bytestream_get_be16 (int const**) ;
 int bytestream_get_byte (int const**) ;
 int ff_set_dimensions (TYPE_3__*,void*,void*) ;

__attribute__((used)) static int dvbsub_parse_display_definition_segment(AVCodecContext *avctx,
                                                   const uint8_t *buf,
                                                   int buf_size)
{
    DVBSubContext *ctx = avctx->priv_data;
    DVBSubDisplayDefinition *display_def = ctx->display_definition;
    int dds_version, info_byte;

    if (buf_size < 5)
        return AVERROR_INVALIDDATA;

    info_byte = bytestream_get_byte(&buf);
    dds_version = info_byte >> 4;
    if (display_def && display_def->version == dds_version)
        return 0;

    if (!display_def) {
        display_def = av_mallocz(sizeof(*display_def));
        if (!display_def)
            return AVERROR(ENOMEM);
        ctx->display_definition = display_def;
    }

    display_def->version = dds_version;
    display_def->x = 0;
    display_def->y = 0;
    display_def->width = bytestream_get_be16(&buf) + 1;
    display_def->height = bytestream_get_be16(&buf) + 1;
    if (!avctx->width || !avctx->height) {
        int ret = ff_set_dimensions(avctx, display_def->width, display_def->height);
        if (ret < 0)
            return ret;
    }

    if (info_byte & 1<<3) {
        if (buf_size < 13)
            return AVERROR_INVALIDDATA;

        display_def->x = bytestream_get_be16(&buf);
        display_def->width = bytestream_get_be16(&buf) - display_def->x + 1;
        display_def->y = bytestream_get_be16(&buf);
        display_def->height = bytestream_get_be16(&buf) - display_def->y + 1;
    }

    return 0;
}
