
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* row_start; int col; scalar_t__ width; scalar_t__ row; scalar_t__ height; scalar_t__ bytes_per_row; scalar_t__* clut; } ;
typedef TYPE_1__ lzss_image_state ;



__attribute__((used)) static inline int
vc_decompress_lzss_next_pixel (int next_data, lzss_image_state* state)
{
    uint32_t palette_index = 0;
    uint32_t pixel_value = 0;

    palette_index = next_data * 3;

    pixel_value = ( (uint32_t) state->clut[palette_index + 0] << 16)
                | ( (uint32_t) state->clut[palette_index + 1] << 8)
                | ( (uint32_t) state->clut[palette_index + 2]);

    *(state->row_start + state->col) = pixel_value;

    if (++state->col >= state->width) {
        state->col = 0;
        if (++state->row >= state->height) {
            return 1;
        }
        state->row_start = (volatile uint32_t *) (((uintptr_t)state->row_start) + state->bytes_per_row);
    }
    return 0;
}
