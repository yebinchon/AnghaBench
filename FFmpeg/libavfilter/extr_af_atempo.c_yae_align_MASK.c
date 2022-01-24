#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ xdat; } ;
typedef  int /*<<< orphan*/  RDFTContext ;
typedef  int FFTSample ;
typedef  int /*<<< orphan*/  FFTComplex ;
typedef  TYPE_1__ AudioFragment ;

/* Variables and functions */
 int FUNC0 (int const,int /*<<< orphan*/ ) ; 
 int FUNC1 (int const,int const) ; 
 int FLT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int const) ; 

__attribute__((used)) static int FUNC3(AudioFragment *frag,
                     const AudioFragment *prev,
                     const int window,
                     const int delta_max,
                     const int drift,
                     FFTSample *correlation,
                     RDFTContext *complex_to_real)
{
    int       best_offset = -drift;
    FFTSample best_metric = -FLT_MAX;
    FFTSample *xcorr;

    int i0;
    int i1;
    int i;

    FUNC2(correlation,
                       complex_to_real,
                       (const FFTComplex *)prev->xdat,
                       (const FFTComplex *)frag->xdat,
                       window);

    // identify search window boundaries:
    i0 = FUNC0(window / 2 - delta_max - drift, 0);
    i0 = FUNC1(i0, window);

    i1 = FUNC1(window / 2 + delta_max - drift, window - window / 16);
    i1 = FUNC0(i1, 0);

    // identify cross-correlation peaks within search window:
    xcorr = correlation + i0;

    for (i = i0; i < i1; i++, xcorr++) {
        FFTSample metric = *xcorr;

        // normalize:
        FFTSample drifti = (FFTSample)(drift + i);
        metric *= drifti * (FFTSample)(i - i0) * (FFTSample)(i1 - i);

        if (metric > best_metric) {
            best_metric = metric;
            best_offset = i - window / 2;
        }
    }

    return best_offset;
}