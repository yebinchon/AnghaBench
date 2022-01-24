#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int WMACoef ;
struct TYPE_3__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_1__ VLC ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  VLCBITS ; 
 int /*<<< orphan*/  VLCMAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(AVCodecContext *avctx, GetBitContext *gb,
                            VLC *vlc, const float *level_table,
                            const uint16_t *run_table, int version,
                            WMACoef *ptr, int offset, int num_coefs,
                            int block_len, int frame_len_bits,
                            int coef_nb_bits)
{
    int code, level, sign;
    const uint32_t *ilvl = (const uint32_t *) level_table;
    uint32_t *iptr = (uint32_t *) ptr;
    const unsigned int coef_mask = block_len - 1;
    for (; offset < num_coefs; offset++) {
        code = FUNC4(gb, vlc->table, VLCBITS, VLCMAX);
        if (code > 1) {
            /** normal code */
            offset                  += run_table[code];
            sign                     = FUNC3(gb) - 1;
            iptr[offset & coef_mask] = ilvl[code] ^ (sign & 0x80000000);
        } else if (code == 1) {
            /** EOB */
            break;
        } else {
            /** escape */
            if (!version) {
                level = FUNC2(gb, coef_nb_bits);
                /** NOTE: this is rather suboptimal. reading
                 *  block_len_bits would be better */
                offset += FUNC2(gb, frame_len_bits);
            } else {
                level = FUNC1(gb);
                /** escape decode */
                if (FUNC3(gb)) {
                    if (FUNC3(gb)) {
                        if (FUNC3(gb)) {
                            FUNC0(avctx, AV_LOG_ERROR,
                                   "broken escape sequence\n");
                            return -1;
                        } else
                            offset += FUNC2(gb, frame_len_bits) + 4;
                    } else
                        offset += FUNC2(gb, 2) + 1;
                }
            }
            sign                    = FUNC3(gb) - 1;
            ptr[offset & coef_mask] = (level ^ sign) - sign;
        }
    }
    /** NOTE: EOB can be omitted */
    if (offset > num_coefs) {
        FUNC0(avctx, AV_LOG_ERROR,
               "overflow (%d > %d) in spectral RLE, ignoring\n",
               offset,
               num_coefs
              );
        return -1;
    }

    return 0;
}