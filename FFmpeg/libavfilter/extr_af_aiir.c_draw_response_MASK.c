#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int* linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {int h; int w; int ir_channel; int channels; scalar_t__ format; TYPE_1__* iir; } ;
struct TYPE_9__ {double** ab; int* nb_ab; float g; } ;
typedef  TYPE_2__ AudioIIRContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 float FLT_MAX ; 
 float FLT_MIN ; 
 int M_PI ; 
 float FUNC1 (double,double) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 float* FUNC4 (int,int) ; 
 double const FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,char*,int) ; 
 float FUNC8 (float,float) ; 
 float FUNC9 (float,float) ; 
 float FUNC10 (double,double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 double const FUNC12 (double) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,float) ; 

__attribute__((used)) static void FUNC14(AVFilterContext *ctx, AVFrame *out)
{
    AudioIIRContext *s = ctx->priv;
    float *mag, *phase, *delay, min = FLT_MAX, max = FLT_MIN;
    float min_delay = FLT_MAX, max_delay = FLT_MIN;
    int prev_ymag = -1, prev_yphase = -1, prev_ydelay = -1;
    char text[32];
    int ch, i, x;

    FUNC11(out->data[0], 0, s->h * out->linesize[0]);

    phase = FUNC4(s->w, sizeof(*phase));
    mag = FUNC4(s->w, sizeof(*mag));
    delay = FUNC4(s->w, sizeof(*delay));
    if (!mag || !phase || !delay)
        goto end;

    ch = FUNC2(s->ir_channel, 0, s->channels - 1);
    for (i = 0; i < s->w; i++) {
        const double *b = s->iir[ch].ab[0];
        const double *a = s->iir[ch].ab[1];
        double w = i * M_PI / (s->w - 1);
        double realz, realp;
        double imagz, imagp;
        double real, imag, div;

        if (s->format == 0) {
            realz = 0., realp = 0.;
            imagz = 0., imagp = 0.;
            for (x = 0; x < s->iir[ch].nb_ab[1]; x++) {
                realz += FUNC5(-x * w) * a[x];
                imagz += FUNC12(-x * w) * a[x];
            }

            for (x = 0; x < s->iir[ch].nb_ab[0]; x++) {
                realp += FUNC5(-x * w) * b[x];
                imagp += FUNC12(-x * w) * b[x];
            }

            div = realp * realp + imagp * imagp;
            real = (realz * realp + imagz * imagp) / div;
            imag = (imagz * realp - imagp * realz) / div;
        } else {
            real = 1;
            imag = 0;
            for (x = 0; x < s->iir[ch].nb_ab[1]; x++) {
                double ore, oim, re, im;

                re = FUNC5(w) - a[2 * x];
                im = FUNC12(w) - a[2 * x + 1];

                ore = real;
                oim = imag;

                real = ore * re - oim * im;
                imag = ore * im + oim * re;
            }

            for (x = 0; x < s->iir[ch].nb_ab[0]; x++) {
                double ore, oim, re, im;

                re = FUNC5(w) - b[2 * x];
                im = FUNC12(w) - b[2 * x + 1];

                ore = real;
                oim = imag;
                div = re * re + im * im;

                real = (ore * re + oim * im) / div;
                imag = (oim * re - ore * im) / div;
            }
        }

        mag[i] = s->iir[ch].g * FUNC10(real, imag);
        phase[i] = FUNC1(imag, real);
        min = FUNC9(min, mag[i]);
        max = FUNC8(max, mag[i]);
    }

    for (i = 0; i < s->w - 1; i++) {
        float dw =  M_PI / (s->w - 1);

        delay[i] = -(phase[i + 1] - phase[i]) / dw;
        min_delay = FUNC9(min_delay, delay[i]);
        max_delay = FUNC8(max_delay, delay[i]);
    }

    delay[i] = delay[i - 1];

    for (i = 0; i < s->w; i++) {
        int ymag = mag[i] / max * (s->h - 1);
        int ydelay = (delay[i] - min_delay) / (max_delay - min_delay) * (s->h - 1);
        int yphase = (0.5 * (1. + phase[i] / M_PI)) * (s->h - 1);

        ymag = s->h - 1 - FUNC2(ymag, 0, s->h - 1);
        yphase = s->h - 1 - FUNC2(yphase, 0, s->h - 1);
        ydelay = s->h - 1 - FUNC2(ydelay, 0, s->h - 1);

        if (prev_ymag < 0)
            prev_ymag = ymag;
        if (prev_yphase < 0)
            prev_yphase = yphase;
        if (prev_ydelay < 0)
            prev_ydelay = ydelay;

        FUNC6(out, i,   ymag, FUNC0(i - 1, 0),   prev_ymag, 0xFFFF00FF);
        FUNC6(out, i, yphase, FUNC0(i - 1, 0), prev_yphase, 0xFF00FF00);
        FUNC6(out, i, ydelay, FUNC0(i - 1, 0), prev_ydelay, 0xFF00FFFF);

        prev_ymag   = ymag;
        prev_yphase = yphase;
        prev_ydelay = ydelay;
    }

    if (s->w > 400 && s->h > 100) {
        FUNC7(out, 2, 2, "Max Magnitude:", 0xDDDDDDDD);
        FUNC13(text, sizeof(text), "%.2f", max);
        FUNC7(out, 15 * 8 + 2, 2, text, 0xDDDDDDDD);

        FUNC7(out, 2, 12, "Min Magnitude:", 0xDDDDDDDD);
        FUNC13(text, sizeof(text), "%.2f", min);
        FUNC7(out, 15 * 8 + 2, 12, text, 0xDDDDDDDD);

        FUNC7(out, 2, 22, "Max Delay:", 0xDDDDDDDD);
        FUNC13(text, sizeof(text), "%.2f", max_delay);
        FUNC7(out, 11 * 8 + 2, 22, text, 0xDDDDDDDD);

        FUNC7(out, 2, 32, "Min Delay:", 0xDDDDDDDD);
        FUNC13(text, sizeof(text), "%.2f", min_delay);
        FUNC7(out, 11 * 8 + 2, 32, text, 0xDDDDDDDD);
    }

end:
    FUNC3(delay);
    FUNC3(phase);
    FUNC3(mag);
}