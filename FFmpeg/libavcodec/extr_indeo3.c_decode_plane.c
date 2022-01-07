
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_11__ {int width; int height; scalar_t__ mv_ptr; scalar_t__ tree; scalar_t__ ypos; scalar_t__ xpos; } ;
struct TYPE_10__ {unsigned int num_vectors; int const* last_byte; scalar_t__ need_resync; scalar_t__ skip_bits; int gb; int const* mc_vectors; int avctx; } ;
struct TYPE_9__ {int width; int height; } ;
typedef TYPE_1__ Plane ;
typedef TYPE_2__ Indeo3DecodeContext ;
typedef TYPE_3__ Cell ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int CELL_STACK_MAX ;
 int INTRA_NULL ;
 int av_log (int ,int ,char*,unsigned int) ;
 unsigned int bytestream_get_le32 (int const**) ;
 int init_get_bits (int *,int const*,int) ;
 int parse_bintree (TYPE_2__*,int *,TYPE_1__*,int ,TYPE_3__*,int ,int) ;

__attribute__((used)) static int decode_plane(Indeo3DecodeContext *ctx, AVCodecContext *avctx,
                        Plane *plane, const uint8_t *data, int32_t data_size,
                        int32_t strip_width)
{
    Cell curr_cell;
    unsigned num_vectors;



    num_vectors = bytestream_get_le32(&data); data_size -= 4;
    if (num_vectors > 256) {
        av_log(ctx->avctx, AV_LOG_ERROR,
               "Read invalid number of motion vectors %d\n", num_vectors);
        return AVERROR_INVALIDDATA;
    }
    if (num_vectors * 2 > data_size)
        return AVERROR_INVALIDDATA;

    ctx->num_vectors = num_vectors;
    ctx->mc_vectors = num_vectors ? data : 0;


    init_get_bits(&ctx->gb, &data[num_vectors * 2], (data_size - num_vectors * 2) << 3);
    ctx->skip_bits = 0;
    ctx->need_resync = 0;

    ctx->last_byte = data + data_size;


    curr_cell.xpos = curr_cell.ypos = 0;
    curr_cell.width = plane->width >> 2;
    curr_cell.height = plane->height >> 2;
    curr_cell.tree = 0;
    curr_cell.mv_ptr = 0;

    return parse_bintree(ctx, avctx, plane, INTRA_NULL, &curr_cell, CELL_STACK_MAX, strip_width);
}
