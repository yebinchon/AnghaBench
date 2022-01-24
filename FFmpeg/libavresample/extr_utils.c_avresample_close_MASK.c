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
struct TYPE_3__ {scalar_t__ use_channel_map; int /*<<< orphan*/  mix_matrix; int /*<<< orphan*/  am; int /*<<< orphan*/  resample; int /*<<< orphan*/  ac_out; int /*<<< orphan*/  ac_in; int /*<<< orphan*/ * out_fifo; int /*<<< orphan*/  out_buffer; int /*<<< orphan*/  resample_out_buffer; int /*<<< orphan*/  in_buffer; } ;
typedef  TYPE_1__ AVAudioResampleContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(AVAudioResampleContext *avr)
{
    FUNC3(&avr->in_buffer);
    FUNC3(&avr->resample_out_buffer);
    FUNC3(&avr->out_buffer);
    FUNC0(avr->out_fifo);
    avr->out_fifo = NULL;
    FUNC2(&avr->ac_in);
    FUNC2(&avr->ac_out);
    FUNC5(&avr->resample);
    FUNC4(&avr->am);
    FUNC1(&avr->mix_matrix);

    avr->use_channel_map = 0;
}