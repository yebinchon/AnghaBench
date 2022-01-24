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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int max_samples_per_frame; int direct_output; int sample_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/ ** extra_bits_buffer; int /*<<< orphan*/ ** output_samples_buffer; int /*<<< orphan*/ ** predict_error_buffer; int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ ALACContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf_alloc_fail ; 

__attribute__((used)) static int FUNC4(ALACContext *alac)
{
    int ch;
    unsigned buf_size = alac->max_samples_per_frame * sizeof(int32_t);

    for (ch = 0; ch < 2; ch++) {
        alac->predict_error_buffer[ch]  = NULL;
        alac->output_samples_buffer[ch] = NULL;
        alac->extra_bits_buffer[ch]     = NULL;
    }

    for (ch = 0; ch < FUNC1(alac->channels, 2); ch++) {
        FUNC2(alac->avctx, alac->predict_error_buffer[ch],
                         buf_size, buf_alloc_fail);

        alac->direct_output = alac->sample_size > 16;
        if (!alac->direct_output) {
            FUNC2(alac->avctx, alac->output_samples_buffer[ch],
                             buf_size + AV_INPUT_BUFFER_PADDING_SIZE, buf_alloc_fail);
        }

        FUNC2(alac->avctx, alac->extra_bits_buffer[ch],
                         buf_size + AV_INPUT_BUFFER_PADDING_SIZE, buf_alloc_fail);
    }
    return 0;
buf_alloc_fail:
    FUNC3(alac->avctx);
    return FUNC0(ENOMEM);
}