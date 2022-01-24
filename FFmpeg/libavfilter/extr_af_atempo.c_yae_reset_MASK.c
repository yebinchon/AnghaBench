#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {int format; int channels; int stride; int window; float* correlation; int ring; float* buffer; float* hann; int /*<<< orphan*/ * complex_to_real; int /*<<< orphan*/ * real_to_complex; TYPE_1__* frag; } ;
struct TYPE_6__ {float* data; float* xdat; } ;
typedef  int /*<<< orphan*/  FFTComplex ;
typedef  TYPE_2__ ATempoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DFT_R2C ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  IDFT_C2R ; 
 double M_PI ; 
 int /*<<< orphan*/  FUNC1 (float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(ATempoContext *atempo,
                     enum AVSampleFormat format,
                     int sample_rate,
                     int channels)
{
    const int sample_size = FUNC3(format);
    uint32_t nlevels  = 0;
    uint32_t pot;
    int i;

    atempo->format   = format;
    atempo->channels = channels;
    atempo->stride   = sample_size * channels;

    // pick a segment window size:
    atempo->window = sample_rate / 24;

    // adjust window size to be a power-of-two integer:
    nlevels = FUNC4(atempo->window);
    pot = 1 << nlevels;
    FUNC2(pot <= atempo->window);

    if (pot < atempo->window) {
        atempo->window = pot * 2;
        nlevels++;
    }

    // initialize audio fragment buffers:
    FUNC1(atempo->frag[0].data, atempo->window * atempo->stride);
    FUNC1(atempo->frag[1].data, atempo->window * atempo->stride);
    FUNC1(atempo->frag[0].xdat, atempo->window * sizeof(FFTComplex));
    FUNC1(atempo->frag[1].xdat, atempo->window * sizeof(FFTComplex));

    // initialize rDFT contexts:
    FUNC5(atempo->real_to_complex);
    atempo->real_to_complex = NULL;

    FUNC5(atempo->complex_to_real);
    atempo->complex_to_real = NULL;

    atempo->real_to_complex = FUNC6(nlevels + 1, DFT_R2C);
    if (!atempo->real_to_complex) {
        FUNC9(atempo);
        return FUNC0(ENOMEM);
    }

    atempo->complex_to_real = FUNC6(nlevels + 1, IDFT_C2R);
    if (!atempo->complex_to_real) {
        FUNC9(atempo);
        return FUNC0(ENOMEM);
    }

    FUNC1(atempo->correlation, atempo->window * sizeof(FFTComplex));

    atempo->ring = atempo->window * 3;
    FUNC1(atempo->buffer, atempo->ring * atempo->stride);

    // initialize the Hann window function:
    FUNC1(atempo->hann, atempo->window * sizeof(float));

    for (i = 0; i < atempo->window; i++) {
        double t = (double)i / (double)(atempo->window - 1);
        double h = 0.5 * (1.0 - FUNC7(2.0 * M_PI * t));
        atempo->hann[i] = (float)h;
    }

    FUNC8(atempo);
    return 0;
}