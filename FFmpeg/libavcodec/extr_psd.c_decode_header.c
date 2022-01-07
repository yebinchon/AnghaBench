
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int strict_std_compliance; } ;
struct TYPE_6__ {int channel_count; int height; int width; int compression; TYPE_2__* avctx; int gb; int * palette; int color_mode; void* channel_depth; } ;
typedef TYPE_1__ PSDContext ;


 int AVERROR_EXPERIMENTAL ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int FFMIN (int,int) ;
 int FF_COMPLIANCE_EXPERIMENTAL ;
 int HAVE_BIGENDIAN ;
 int MKTAG (char,char,char,char) ;
 int PSD_BITMAP ;
 int PSD_CMYK ;
 int PSD_DUOTONE ;
 int PSD_GRAYSCALE ;
 int PSD_INDEXED ;
 int PSD_LAB ;
 int PSD_MULTICHANNEL ;
 int PSD_RGB ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int avpriv_request_sample (TYPE_2__*,char*) ;
 void* bytestream2_get_be16 (int *) ;
 void* bytestream2_get_be32 (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,int) ;
 int ff_set_dimensions (TYPE_2__*,int,int) ;
 int memset (int *,int,int ) ;

__attribute__((used)) static int decode_header(PSDContext * s)
{
    int signature, version, color_mode;
    int64_t len_section;
    int ret = 0;

    if (bytestream2_get_bytes_left(&s->gb) < 30) {
        av_log(s->avctx, AV_LOG_ERROR, "Header too short to parse.\n");
        return AVERROR_INVALIDDATA;
    }

    signature = bytestream2_get_le32(&s->gb);
    if (signature != MKTAG('8','B','P','S')) {
        av_log(s->avctx, AV_LOG_ERROR, "Wrong signature %d.\n", signature);
        return AVERROR_INVALIDDATA;
    }

    version = bytestream2_get_be16(&s->gb);
    if (version != 1) {
        av_log(s->avctx, AV_LOG_ERROR, "Wrong version %d.\n", version);
        return AVERROR_INVALIDDATA;
    }

    bytestream2_skip(&s->gb, 6);

    s->channel_count = bytestream2_get_be16(&s->gb);
    if ((s->channel_count < 1) || (s->channel_count > 56)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid channel count %d.\n", s->channel_count);
        return AVERROR_INVALIDDATA;
    }

    s->height = bytestream2_get_be32(&s->gb);

    if ((s->height > 30000) && (s->avctx->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL)) {
        av_log(s->avctx, AV_LOG_ERROR,
               "Height > 30000 is experimental, add "
               "'-strict %d' if you want to try to decode the picture.\n",
               FF_COMPLIANCE_EXPERIMENTAL);
        return AVERROR_EXPERIMENTAL;
    }

    s->width = bytestream2_get_be32(&s->gb);
    if ((s->width > 30000) && (s->avctx->strict_std_compliance > FF_COMPLIANCE_EXPERIMENTAL)) {
        av_log(s->avctx, AV_LOG_ERROR,
               "Width > 30000 is experimental, add "
               "'-strict %d' if you want to try to decode the picture.\n",
               FF_COMPLIANCE_EXPERIMENTAL);
        return AVERROR_EXPERIMENTAL;
    }

    if ((ret = ff_set_dimensions(s->avctx, s->width, s->height)) < 0)
        return ret;

    s->channel_depth = bytestream2_get_be16(&s->gb);

    color_mode = bytestream2_get_be16(&s->gb);
    switch (color_mode) {
    case 0:
        s->color_mode = PSD_BITMAP;
        break;
    case 1:
        s->color_mode = PSD_GRAYSCALE;
        break;
    case 2:
        s->color_mode = PSD_INDEXED;
        break;
    case 3:
        s->color_mode = PSD_RGB;
        break;
    case 4:
        s->color_mode = PSD_CMYK;
        break;
    case 7:
        s->color_mode = PSD_MULTICHANNEL;
        break;
    case 8:
        s->color_mode = PSD_DUOTONE;
        break;
    case 9:
        s->color_mode = PSD_LAB;
        break;
    default:
        av_log(s->avctx, AV_LOG_ERROR, "Unknown color mode %d.\n", color_mode);
        return AVERROR_INVALIDDATA;
    }


    len_section = bytestream2_get_be32(&s->gb);
    if (len_section < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Negative size for color map data section.\n");
        return AVERROR_INVALIDDATA;
    }

    if (bytestream2_get_bytes_left(&s->gb) < (len_section + 4)) {
        av_log(s->avctx, AV_LOG_ERROR, "Incomplete file.\n");
        return AVERROR_INVALIDDATA;
    }
    if (len_section) {
        int i,j;
        memset(s->palette, 0xff, AVPALETTE_SIZE);
        for (j = HAVE_BIGENDIAN; j < 3 + HAVE_BIGENDIAN; j++)
            for (i = 0; i < FFMIN(256, len_section / 3); i++)
                s->palette[i * 4 + (HAVE_BIGENDIAN ? j : 2 - j)] = bytestream2_get_byteu(&s->gb);
        len_section -= i * 3;
    }
    bytestream2_skip(&s->gb, len_section);


    len_section = bytestream2_get_be32(&s->gb);
    if (len_section < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Negative size for image ressources section.\n");
        return AVERROR_INVALIDDATA;
    }

    if (bytestream2_get_bytes_left(&s->gb) < (len_section + 4)) {
        av_log(s->avctx, AV_LOG_ERROR, "Incomplete file.\n");
        return AVERROR_INVALIDDATA;
    }
    bytestream2_skip(&s->gb, len_section);


    len_section = bytestream2_get_be32(&s->gb);
    if (len_section < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Negative size for layers and masks data section.\n");
        return AVERROR_INVALIDDATA;
    }

    if (bytestream2_get_bytes_left(&s->gb) < len_section) {
        av_log(s->avctx, AV_LOG_ERROR, "Incomplete file.\n");
        return AVERROR_INVALIDDATA;
    }
    bytestream2_skip(&s->gb, len_section);


    if (bytestream2_get_bytes_left(&s->gb) < 2) {
        av_log(s->avctx, AV_LOG_ERROR, "File without image data section.\n");
        return AVERROR_INVALIDDATA;
    }

    s->compression = bytestream2_get_be16(&s->gb);
    switch (s->compression) {
    case 0:
    case 1:
        break;
    case 2:
        avpriv_request_sample(s->avctx, "ZIP without predictor compression");
        return AVERROR_PATCHWELCOME;
    case 3:
        avpriv_request_sample(s->avctx, "ZIP with predictor compression");
        return AVERROR_PATCHWELCOME;
    default:
        av_log(s->avctx, AV_LOG_ERROR, "Unknown compression %d.\n", s->compression);
        return AVERROR_INVALIDDATA;
    }

    return ret;
}
