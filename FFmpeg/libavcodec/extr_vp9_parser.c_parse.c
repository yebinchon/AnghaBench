
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int profile; } ;
struct TYPE_5__ {int key_frame; int pict_type; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVCodecParserContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int init_get_bits8 (int *,int const*,int) ;

__attribute__((used)) static int parse(AVCodecParserContext *ctx,
                 AVCodecContext *avctx,
                 const uint8_t **out_data, int *out_size,
                 const uint8_t *data, int size)
{
    GetBitContext gb;
    int res, profile, keyframe;

    *out_data = data;
    *out_size = size;

    if (!size || (res = init_get_bits8(&gb, data, size)) < 0)
        return size;
    get_bits(&gb, 2);
    profile = get_bits1(&gb);
    profile |= get_bits1(&gb) << 1;
    if (profile == 3) profile += get_bits1(&gb);
    if (profile > 3)
        return size;

    avctx->profile = profile;

    if (get_bits1(&gb)) {
        keyframe = 0;
    } else {
        keyframe = !get_bits1(&gb);
    }

    if (!keyframe) {
        ctx->pict_type = AV_PICTURE_TYPE_P;
        ctx->key_frame = 0;
    } else {
        ctx->pict_type = AV_PICTURE_TYPE_I;
        ctx->key_frame = 1;
    }

    return size;
}
