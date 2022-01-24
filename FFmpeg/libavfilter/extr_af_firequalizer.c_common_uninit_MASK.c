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
struct TYPE_3__ {int /*<<< orphan*/  conv_idx; int /*<<< orphan*/  conv_buf; int /*<<< orphan*/  cepstrum_buf; int /*<<< orphan*/  kernel_buf; int /*<<< orphan*/  kernel_tmp_buf; int /*<<< orphan*/  dump_buf; int /*<<< orphan*/  analysis_buf; int /*<<< orphan*/ * cepstrum_irdft; int /*<<< orphan*/ * cepstrum_rdft; int /*<<< orphan*/ * fft_ctx; int /*<<< orphan*/ * irdft; int /*<<< orphan*/ * rdft; int /*<<< orphan*/ * analysis_irdft; int /*<<< orphan*/ * analysis_rdft; } ;
typedef  TYPE_1__ FIREqualizerContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(FIREqualizerContext *s)
{
    FUNC2(s->analysis_rdft);
    FUNC2(s->analysis_irdft);
    FUNC2(s->rdft);
    FUNC2(s->irdft);
    FUNC0(s->fft_ctx);
    FUNC2(s->cepstrum_rdft);
    FUNC2(s->cepstrum_irdft);
    s->analysis_rdft = s->analysis_irdft = s->rdft = s->irdft = NULL;
    s->fft_ctx = NULL;
    s->cepstrum_rdft = NULL;
    s->cepstrum_irdft = NULL;

    FUNC1(&s->analysis_buf);
    FUNC1(&s->dump_buf);
    FUNC1(&s->kernel_tmp_buf);
    FUNC1(&s->kernel_buf);
    FUNC1(&s->cepstrum_buf);
    FUNC1(&s->conv_buf);
    FUNC1(&s->conv_idx);
}