#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SwrContext {double out_sample_rate; scalar_t__ delayed_samples_fixup; scalar_t__ flushed; scalar_t__ resample; } ;
typedef  int /*<<< orphan*/  soxr_t ;
typedef  double int64_t ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC1(struct SwrContext *s, int64_t base){
    double delayed_samples = FUNC0((soxr_t)s->resample);
    double delay_s;

    if (s->flushed)
        delayed_samples += s->delayed_samples_fixup;

    delay_s = delayed_samples / s->out_sample_rate;

    return (int64_t)(delay_s * base + .5);
}