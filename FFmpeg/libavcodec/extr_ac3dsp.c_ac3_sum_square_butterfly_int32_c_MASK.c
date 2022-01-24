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
typedef  scalar_t__ int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC1(int64_t sum[4],
                                             const int32_t *coef0,
                                             const int32_t *coef1,
                                             int len)
{
    int i;

    sum[0] = sum[1] = sum[2] = sum[3] = 0;

    for (i = 0; i < len; i++) {
        int lt = coef0[i];
        int rt = coef1[i];
        int md = lt + rt;
        int sd = lt - rt;
        FUNC0(sum[0], lt, lt);
        FUNC0(sum[1], rt, rt);
        FUNC0(sum[2], md, md);
        FUNC0(sum[3], sd, sd);
    }
}