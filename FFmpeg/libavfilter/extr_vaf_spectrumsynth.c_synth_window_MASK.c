#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  im; scalar_t__ re; } ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int size; int win_size; int channels; int nb_freq; TYPE_5__** fft_data; int /*<<< orphan*/  fft; } ;
typedef  TYPE_1__ SpectrumSynthContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int const,int) ; 

__attribute__((used)) static void FUNC3(AVFilterContext *ctx, int x)
{
    SpectrumSynthContext *s = ctx->priv;
    const int h = s->size;
    int nb = s->win_size;
    int y, f, ch;

    for (ch = 0; ch < s->channels; ch++) {
        FUNC2(ctx, x, h, ch);

        for (y = h; y <= s->nb_freq; y++) {
            s->fft_data[ch][y].re = 0;
            s->fft_data[ch][y].im = 0;
        }

        for (y = s->nb_freq + 1, f = s->nb_freq - 1; y < nb; y++, f--) {
            s->fft_data[ch][y].re =  s->fft_data[ch][f].re;
            s->fft_data[ch][y].im = -s->fft_data[ch][f].im;
        }

        FUNC1(s->fft, s->fft_data[ch]);
        FUNC0(s->fft, s->fft_data[ch]);
    }
}