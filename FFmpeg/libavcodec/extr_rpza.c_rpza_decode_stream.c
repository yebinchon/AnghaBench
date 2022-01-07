
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_8__ {int* linesize; scalar_t__* data; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {int gb; TYPE_3__* avctx; TYPE_4__* frame; } ;
typedef TYPE_1__ RpzaContext ;


 int ADVANCE_BLOCK () ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int CHECK_BLOCK () ;
 int FFMIN (int,int) ;
 int av_log (TYPE_3__*,int ,char*,int,...) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_be16u (int *) ;
 int bytestream2_get_be32 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_peek_byte (int *) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_4__*,int ) ;

__attribute__((used)) static int rpza_decode_stream(RpzaContext *s)
{
    int width = s->avctx->width;
    int stride, row_inc, ret;
    int chunk_size;
    uint16_t colorA = 0, colorB;
    uint16_t color4[4];
    uint16_t ta, tb;
    uint16_t *pixels;

    int row_ptr = 0;
    int pixel_ptr = 0;
    int block_ptr;
    int pixel_x, pixel_y;
    int total_blocks;


    if (bytestream2_peek_byte(&s->gb) != 0xe1)
        av_log(s->avctx, AV_LOG_ERROR, "First chunk byte is 0x%02x instead of 0xe1\n",
               bytestream2_peek_byte(&s->gb));


    chunk_size = bytestream2_get_be32(&s->gb) & 0x00FFFFFF;


    if (chunk_size != bytestream2_get_bytes_left(&s->gb) + 4)
        av_log(s->avctx, AV_LOG_WARNING,
               "MOV chunk size %d != encoded chunk size %d\n",
               chunk_size,
               bytestream2_get_bytes_left(&s->gb) + 4
              );


    total_blocks = ((s->avctx->width + 3) / 4) * ((s->avctx->height + 3) / 4);

    if (total_blocks / 32 > bytestream2_get_bytes_left(&s->gb))
        return AVERROR_INVALIDDATA;

    if ((ret = ff_reget_buffer(s->avctx, s->frame, 0)) < 0)
        return ret;
    pixels = (uint16_t *)s->frame->data[0];
    stride = s->frame->linesize[0] / 2;
    row_inc = stride - 4;


    while (bytestream2_get_bytes_left(&s->gb)) {
        uint8_t opcode = bytestream2_get_byte(&s->gb);

        int n_blocks = (opcode & 0x1f) + 1;


        if ((opcode & 0x80) == 0) {
            colorA = (opcode << 8) | bytestream2_get_byte(&s->gb);
            opcode = 0;
            if ((bytestream2_peek_byte(&s->gb) & 0x80) != 0) {



                opcode = 0x20;
                n_blocks = 1;
            }
        }

        n_blocks = FFMIN(n_blocks, total_blocks);

        switch (opcode & 0xe0) {


        case 0x80:
            while (n_blocks--) {
                CHECK_BLOCK();
                ADVANCE_BLOCK();
            }
            break;


        case 0xa0:
            colorA = bytestream2_get_be16(&s->gb);
            while (n_blocks--) {
                CHECK_BLOCK();
                block_ptr = row_ptr + pixel_ptr;
                for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                    for (pixel_x = 0; pixel_x < 4; pixel_x++){
                        pixels[block_ptr] = colorA;
                        block_ptr++;
                    }
                    block_ptr += row_inc;
                }
                ADVANCE_BLOCK();
            }
            break;


        case 0xc0:
            colorA = bytestream2_get_be16(&s->gb);
        case 0x20:
            colorB = bytestream2_get_be16(&s->gb);


            color4[0] = colorB;
            color4[1] = 0;
            color4[2] = 0;
            color4[3] = colorA;


            ta = (colorA >> 10) & 0x1F;
            tb = (colorB >> 10) & 0x1F;
            color4[1] |= ((11 * ta + 21 * tb) >> 5) << 10;
            color4[2] |= ((21 * ta + 11 * tb) >> 5) << 10;


            ta = (colorA >> 5) & 0x1F;
            tb = (colorB >> 5) & 0x1F;
            color4[1] |= ((11 * ta + 21 * tb) >> 5) << 5;
            color4[2] |= ((21 * ta + 11 * tb) >> 5) << 5;


            ta = colorA & 0x1F;
            tb = colorB & 0x1F;
            color4[1] |= ((11 * ta + 21 * tb) >> 5);
            color4[2] |= ((21 * ta + 11 * tb) >> 5);

            if (bytestream2_get_bytes_left(&s->gb) < n_blocks * 4)
                return AVERROR_INVALIDDATA;
            while (n_blocks--) {
                CHECK_BLOCK();
                block_ptr = row_ptr + pixel_ptr;
                for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                    uint8_t index = bytestream2_get_byteu(&s->gb);
                    for (pixel_x = 0; pixel_x < 4; pixel_x++){
                        uint8_t idx = (index >> (2 * (3 - pixel_x))) & 0x03;
                        pixels[block_ptr] = color4[idx];
                        block_ptr++;
                    }
                    block_ptr += row_inc;
                }
                ADVANCE_BLOCK();
            }
            break;


        case 0x00:
            if (bytestream2_get_bytes_left(&s->gb) < 30)
                return AVERROR_INVALIDDATA;
            CHECK_BLOCK();
            block_ptr = row_ptr + pixel_ptr;
            for (pixel_y = 0; pixel_y < 4; pixel_y++) {
                for (pixel_x = 0; pixel_x < 4; pixel_x++){

                    if ((pixel_y != 0) || (pixel_x != 0))
                        colorA = bytestream2_get_be16u(&s->gb);
                    pixels[block_ptr] = colorA;
                    block_ptr++;
                }
                block_ptr += row_inc;
            }
            ADVANCE_BLOCK();
            break;


        default:
            av_log(s->avctx, AV_LOG_ERROR, "Unknown opcode %d in rpza chunk."
                 " Skip remaining %d bytes of chunk data.\n", opcode,
                 bytestream2_get_bytes_left(&s->gb));
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
