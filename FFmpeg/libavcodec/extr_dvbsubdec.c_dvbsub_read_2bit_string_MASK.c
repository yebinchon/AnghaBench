#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void* const*,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx,
                                   uint8_t *destbuf, int dbuf_len,
                                   const uint8_t **srcbuf, int buf_size,
                                   int non_mod, uint8_t *map_table, int x_pos)
{
    GetBitContext gb;

    int bits;
    int run_length;
    int pixels_read = x_pos;

    FUNC4(&gb, *srcbuf, buf_size << 3);

    destbuf += x_pos;

    while (FUNC3(&gb) < buf_size << 3 && pixels_read < dbuf_len) {
        bits = FUNC1(&gb, 2);

        if (bits) {
            if (non_mod != 1 || bits != 1) {
                if (map_table)
                    *destbuf++ = map_table[bits];
                else
                    *destbuf++ = bits;
            }
            pixels_read++;
        } else {
            bits = FUNC2(&gb);
            if (bits == 1) {
                run_length = FUNC1(&gb, 3) + 3;
                bits = FUNC1(&gb, 2);

                if (non_mod == 1 && bits == 1)
                    pixels_read += run_length;
                else {
                    if (map_table)
                        bits = map_table[bits];
                    while (run_length-- > 0 && pixels_read < dbuf_len) {
                        *destbuf++ = bits;
                        pixels_read++;
                    }
                }
            } else {
                bits = FUNC2(&gb);
                if (bits == 0) {
                    bits = FUNC1(&gb, 2);
                    if (bits == 2) {
                        run_length = FUNC1(&gb, 4) + 12;
                        bits = FUNC1(&gb, 2);

                        if (non_mod == 1 && bits == 1)
                            pixels_read += run_length;
                        else {
                            if (map_table)
                                bits = map_table[bits];
                            while (run_length-- > 0 && pixels_read < dbuf_len) {
                                *destbuf++ = bits;
                                pixels_read++;
                            }
                        }
                    } else if (bits == 3) {
                        run_length = FUNC1(&gb, 8) + 29;
                        bits = FUNC1(&gb, 2);

                        if (non_mod == 1 && bits == 1)
                            pixels_read += run_length;
                        else {
                            if (map_table)
                                bits = map_table[bits];
                            while (run_length-- > 0 && pixels_read < dbuf_len) {
                                *destbuf++ = bits;
                                pixels_read++;
                            }
                        }
                    } else if (bits == 1) {
                        if (map_table)
                            bits = map_table[0];
                        else
                            bits = 0;
                        run_length = 2;
                        while (run_length-- > 0 && pixels_read < dbuf_len) {
                            *destbuf++ = bits;
                            pixels_read++;
                        }
                    } else {
                        (*srcbuf) += (FUNC3(&gb) + 7) >> 3;
                        return pixels_read;
                    }
                } else {
                    if (map_table)
                        bits = map_table[0];
                    else
                        bits = 0;
                    *destbuf++ = bits;
                    pixels_read++;
                }
            }
        }
    }

    if (FUNC1(&gb, 6))
        FUNC0(avctx, AV_LOG_ERROR, "line overflow\n");

    (*srcbuf) += (FUNC3(&gb) + 7) >> 3;

    return pixels_read;
}