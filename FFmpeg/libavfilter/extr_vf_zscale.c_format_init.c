
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int depth; int matrix_coefficients; int color_primaries; int transfer_characteristics; int pixel_range; int chroma_location; int color_family; int pixel_type; int subsample_h; int subsample_w; int height; int width; } ;
typedef TYPE_2__ zimg_image_format ;
struct TYPE_11__ {int chroma_location; int color_range; int color_trc; int color_primaries; int colorspace; int height; int width; } ;
struct TYPE_10__ {int flags; TYPE_1__* comp; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_8__ {int depth; } ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFrame ;


 int AV_PIX_FMT_FLAG_FLOAT ;
 int AV_PIX_FMT_FLAG_RGB ;
 int ZIMG_COLOR_RGB ;
 int ZIMG_COLOR_YUV ;
 int ZIMG_MATRIX_RGB ;
 int ZIMG_PIXEL_BYTE ;
 int ZIMG_PIXEL_FLOAT ;
 int ZIMG_PIXEL_WORD ;
 int ZIMG_RANGE_FULL ;
 int convert_chroma_location (int ) ;
 int convert_matrix (int ) ;
 int convert_primaries (int ) ;
 int convert_range (int ) ;
 int convert_trc (int ) ;

__attribute__((used)) static void format_init(zimg_image_format *format, AVFrame *frame, const AVPixFmtDescriptor *desc,
                        int colorspace, int primaries, int transfer, int range, int location)
{
    format->width = frame->width;
    format->height = frame->height;
    format->subsample_w = desc->log2_chroma_w;
    format->subsample_h = desc->log2_chroma_h;
    format->depth = desc->comp[0].depth;
    format->pixel_type = (desc->flags & AV_PIX_FMT_FLAG_FLOAT) ? ZIMG_PIXEL_FLOAT : desc->comp[0].depth > 8 ? ZIMG_PIXEL_WORD : ZIMG_PIXEL_BYTE;
    format->color_family = (desc->flags & AV_PIX_FMT_FLAG_RGB) ? ZIMG_COLOR_RGB : ZIMG_COLOR_YUV;
    format->matrix_coefficients = (desc->flags & AV_PIX_FMT_FLAG_RGB) ? ZIMG_MATRIX_RGB : colorspace == -1 ? convert_matrix(frame->colorspace) : colorspace;
    format->color_primaries = primaries == -1 ? convert_primaries(frame->color_primaries) : primaries;
    format->transfer_characteristics = transfer == - 1 ? convert_trc(frame->color_trc) : transfer;
    format->pixel_range = (desc->flags & AV_PIX_FMT_FLAG_RGB) ? ZIMG_RANGE_FULL : range == -1 ? convert_range(frame->color_range) : range;
    format->chroma_location = location == -1 ? convert_chroma_location(frame->chroma_location) : location;
}
