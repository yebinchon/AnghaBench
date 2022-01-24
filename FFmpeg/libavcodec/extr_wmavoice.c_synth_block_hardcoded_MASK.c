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
struct frame_type_desc {scalar_t__ fcb_type; } ;
struct TYPE_3__ {float silence_gain; int /*<<< orphan*/  gain_pred_err; int /*<<< orphan*/  frame_cntr; } ;
typedef  TYPE_1__ WMAVoiceContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FCB_TYPE_SILENCE ; 
 int MAX_FRAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 float* wmavoice_gain_universal ; 
 float* wmavoice_std_codebook ; 

__attribute__((used)) static void FUNC4(WMAVoiceContext *s, GetBitContext *gb,
                                 int block_idx, int size,
                                 const struct frame_type_desc *frame_desc,
                                 float *excitation)
{
    float gain;
    int n, r_idx;

    FUNC0(size <= MAX_FRAMESIZE);

    /* Set the offset from which we start reading wmavoice_std_codebook */
    if (frame_desc->fcb_type == FCB_TYPE_SILENCE) {
        r_idx = FUNC3(s->frame_cntr, block_idx, size);
        gain  = s->silence_gain;
    } else /* FCB_TYPE_HARDCODED */ {
        r_idx = FUNC1(gb, 8);
        gain  = wmavoice_gain_universal[FUNC1(gb, 6)];
    }

    /* Clear gain prediction parameters */
    FUNC2(s->gain_pred_err, 0, sizeof(s->gain_pred_err));

    /* Apply gain to hardcoded codebook and use that as excitation signal */
    for (n = 0; n < size; n++)
        excitation[n] = wmavoice_std_codebook[r_idx + n] * gain;
}