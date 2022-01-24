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
struct sbc_frame {unsigned int*** sb_sample; } ;
struct sbc_decoder_state {int** V; int** offset; } ;
typedef  int int32_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int* ff_sbc_proto_4_40m0 ; 
 unsigned int* ff_sbc_proto_4_40m1 ; 
 scalar_t__** ff_synmatrix4 ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

__attribute__((used)) static inline void FUNC3(struct sbc_decoder_state *state,
                                       struct sbc_frame *frame,
                                       int ch, int blk, AVFrame *output_frame)
{
    int i, k, idx;
    int32_t *v = state->V[ch];
    int *offset = state->offset[ch];

    for (i = 0; i < 8; i++) {
        /* Shifting */
        offset[i]--;
        if (offset[i] < 0) {
            offset[i] = 79;
            FUNC2(v + 80, v, 9 * sizeof(*v));
        }

        /* Distribute the new matrix value to the shifted position */
        v[offset[i]] =
            (int)( (unsigned)ff_synmatrix4[i][0] * frame->sb_sample[blk][ch][0] +
                   (unsigned)ff_synmatrix4[i][1] * frame->sb_sample[blk][ch][1] +
                   (unsigned)ff_synmatrix4[i][2] * frame->sb_sample[blk][ch][2] +
                   (unsigned)ff_synmatrix4[i][3] * frame->sb_sample[blk][ch][3] ) >> 15;
    }

    /* Compute the samples */
    for (idx = 0, i = 0; i < 4; i++, idx += 5) {
        k = (i + 4) & 0xf;

        /* Store in output, Q0 */
        FUNC0(&output_frame->data[ch][blk * 8 + i * 2], FUNC1(
         (int)( (unsigned)v[offset[i] + 0] * ff_sbc_proto_4_40m0[idx + 0] +
                (unsigned)v[offset[k] + 1] * ff_sbc_proto_4_40m1[idx + 0] +
                (unsigned)v[offset[i] + 2] * ff_sbc_proto_4_40m0[idx + 1] +
                (unsigned)v[offset[k] + 3] * ff_sbc_proto_4_40m1[idx + 1] +
                (unsigned)v[offset[i] + 4] * ff_sbc_proto_4_40m0[idx + 2] +
                (unsigned)v[offset[k] + 5] * ff_sbc_proto_4_40m1[idx + 2] +
                (unsigned)v[offset[i] + 6] * ff_sbc_proto_4_40m0[idx + 3] +
                (unsigned)v[offset[k] + 7] * ff_sbc_proto_4_40m1[idx + 3] +
                (unsigned)v[offset[i] + 8] * ff_sbc_proto_4_40m0[idx + 4] +
                (unsigned)v[offset[k] + 9] * ff_sbc_proto_4_40m1[idx + 4] ) >> 15));
    }
}