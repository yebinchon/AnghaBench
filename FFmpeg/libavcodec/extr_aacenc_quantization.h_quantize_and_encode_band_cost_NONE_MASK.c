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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline float FUNC1(struct AACEncContext *s, PutBitContext *pb,
                                                const float *in, float *quant, const float *scaled,
                                                int size, int scale_idx, int cb,
                                                const float lambda, const float uplim,
                                                int *bits, float *energy) {
    FUNC0(0);
    return 0.0f;
}