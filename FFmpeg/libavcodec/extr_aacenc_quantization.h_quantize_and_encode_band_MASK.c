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
 int /*<<< orphan*/  INFINITY ; 
 int /*<<< orphan*/  FUNC0 (struct AACEncContext*,int /*<<< orphan*/ *,float const*,float*,int /*<<< orphan*/ *,int,int,int,float const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC1(struct AACEncContext *s, PutBitContext *pb,
                                            const float *in, float *out, int size, int scale_idx,
                                            int cb, const float lambda, int rtz)
{
    FUNC0(s, pb, in, out, NULL, size, scale_idx, cb, lambda,
                                  INFINITY, NULL, NULL, rtz);
}