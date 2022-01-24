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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum CeltSpread { ____Placeholder_CeltSpread } CeltSpread ;
struct TYPE_3__ {int* qcoeff; } ;
typedef  int /*<<< orphan*/  OpusRangeCoder ;
typedef  TYPE_1__ CeltPVQ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,float*,int /*<<< orphan*/ ,float) ; 
 float FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC5(OpusRangeCoder *rc, float *X, uint32_t N, uint32_t K,
                                 enum CeltSpread spread, uint32_t blocks, float gain,
                                 CeltPVQ *pvq)
{
    int *y = pvq->qcoeff;

    gain /= FUNC4(FUNC0(rc, y, N, K));
    FUNC3(y, X, N, gain);
    FUNC1(X, N, blocks, K, spread, 0);
    return FUNC2(y, N, blocks);
}