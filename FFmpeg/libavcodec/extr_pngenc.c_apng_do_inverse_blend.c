
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef unsigned int ptrdiff_t ;
struct TYPE_7__ {scalar_t__ blend_op; unsigned int width; unsigned int height; unsigned int x_offset; unsigned int y_offset; } ;
struct TYPE_6__ {unsigned int width; unsigned int height; unsigned int** data; unsigned int* linesize; int format; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ APNGFctlChunk ;


 scalar_t__ APNG_BLEND_OP_SOURCE ;





 int memcmp (unsigned int const*,unsigned int*,unsigned int) ;
 int memcpy (unsigned int*,unsigned int*,unsigned int) ;
 int memmove (unsigned int*,unsigned int*,unsigned int) ;
 int memset (unsigned int*,int ,unsigned int) ;

__attribute__((used)) static int apng_do_inverse_blend(AVFrame *output, const AVFrame *input,
                                  APNGFctlChunk *fctl_chunk, uint8_t bpp)
{



    unsigned int x, y;
    unsigned int leftmost_x = input->width;
    unsigned int rightmost_x = 0;
    unsigned int topmost_y = input->height;
    unsigned int bottommost_y = 0;
    const uint8_t *input_data = input->data[0];
    uint8_t *output_data = output->data[0];
    ptrdiff_t input_linesize = input->linesize[0];
    ptrdiff_t output_linesize = output->linesize[0];


    for (y = 0; y < input->height; ++y) {
        for (x = 0; x < input->width; ++x) {
            if (!memcmp(input_data + bpp * x, output_data + bpp * x, bpp))
                continue;

            if (x < leftmost_x)
                leftmost_x = x;
            if (x >= rightmost_x)
                rightmost_x = x + 1;
            if (y < topmost_y)
                topmost_y = y;
            if (y >= bottommost_y)
                bottommost_y = y + 1;
        }

        input_data += input_linesize;
        output_data += output_linesize;
    }

    if (leftmost_x == input->width && rightmost_x == 0) {


        leftmost_x = topmost_y = 0;
        rightmost_x = bottommost_y = 1;
    }


    if (fctl_chunk->blend_op == APNG_BLEND_OP_SOURCE) {
        output_data = output->data[0];
        for (y = topmost_y; y < bottommost_y; ++y) {
            memcpy(output_data,
                   input->data[0] + input_linesize * y + bpp * leftmost_x,
                   bpp * (rightmost_x - leftmost_x));
            output_data += output_linesize;
        }
    } else {
        size_t transparent_palette_index;
        uint32_t *palette;

        switch (input->format) {
        case 129:
        case 128:
        case 130:
        case 132:
            break;

        case 131:
            palette = (uint32_t*)input->data[1];
            for (transparent_palette_index = 0; transparent_palette_index < 256; ++transparent_palette_index)
                if (palette[transparent_palette_index] >> 24 == 0)
                    break;
            break;

        default:

            return -1;
        }

        for (y = topmost_y; y < bottommost_y; ++y) {
            uint8_t *foreground = input->data[0] + input_linesize * y + bpp * leftmost_x;
            uint8_t *background = output->data[0] + output_linesize * y + bpp * leftmost_x;
            output_data = output->data[0] + output_linesize * (y - topmost_y);
            for (x = leftmost_x; x < rightmost_x; ++x, foreground += bpp, background += bpp, output_data += bpp) {
                if (!memcmp(foreground, background, bpp)) {
                    if (input->format == 131) {
                        if (transparent_palette_index == 256) {

                            return -1;
                        }

                        *output_data = transparent_palette_index;
                    } else {
                        memset(output_data, 0, bpp);
                    }
                    continue;
                }





                switch (input->format) {
                case 129:
                    if (((uint16_t*)foreground)[3] == 0xffff ||
                        ((uint16_t*)background)[3] == 0)
                        break;
                    return -1;

                case 128:
                    if (((uint16_t*)foreground)[1] == 0xffff ||
                        ((uint16_t*)background)[1] == 0)
                        break;
                    return -1;

                case 130:
                    if (foreground[3] == 0xff || background[3] == 0)
                        break;
                    return -1;

                case 132:
                    if (foreground[1] == 0xff || background[1] == 0)
                        break;
                    return -1;

                case 131:
                    if (palette[*foreground] >> 24 == 0xff ||
                        palette[*background] >> 24 == 0)
                        break;
                    return -1;
                }

                memmove(output_data, foreground, bpp);
            }
        }
    }

    output->width = rightmost_x - leftmost_x;
    output->height = bottommost_y - topmost_y;
    fctl_chunk->width = output->width;
    fctl_chunk->height = output->height;
    fctl_chunk->x_offset = leftmost_x;
    fctl_chunk->y_offset = topmost_y;

    return 0;
}
