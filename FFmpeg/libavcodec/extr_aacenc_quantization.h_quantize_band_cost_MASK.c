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
struct AACEncContext {int dummy; } ;

/* Variables and functions */
 float FUNC0 (struct AACEncContext*,int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ *,float const*,int,int,int,float const,float const,int*,float*,int) ; 

__attribute__((used)) static inline float FUNC1(struct AACEncContext *s, const float *in,
                                const float *scaled, int size, int scale_idx,
                                int cb, const float lambda, const float uplim,
                                int *bits, float *energy, int rtz)
{
    return FUNC0(s, NULL, in, NULL, scaled, size, scale_idx,
                                         cb, lambda, uplim, bits, energy, rtz);
}