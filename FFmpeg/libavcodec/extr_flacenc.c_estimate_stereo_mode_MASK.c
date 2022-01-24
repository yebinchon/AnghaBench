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
typedef  int uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 

__attribute__((used)) static int FUNC3(const int32_t *left_ch, const int32_t *right_ch, int n,
                                int max_rice_param)
{
    int i, best;
    int32_t lt, rt;
    uint64_t sum[4];
    uint64_t score[4];
    int k;

    /* calculate sum of 2nd order residual for each channel */
    sum[0] = sum[1] = sum[2] = sum[3] = 0;
    for (i = 2; i < n; i++) {
        lt = left_ch[i]  - 2*left_ch[i-1]  + left_ch[i-2];
        rt = right_ch[i] - 2*right_ch[i-1] + right_ch[i-2];
        sum[2] += FUNC0((lt + rt) >> 1);
        sum[3] += FUNC0(lt - rt);
        sum[0] += FUNC0(lt);
        sum[1] += FUNC0(rt);
    }
    /* estimate bit counts */
    for (i = 0; i < 4; i++) {
        k      = FUNC1(2 * sum[i], n, max_rice_param);
        sum[i] = FUNC2( 2 * sum[i], n, k);
    }

    /* calculate score for each mode */
    score[0] = sum[0] + sum[1];
    score[1] = sum[0] + sum[3];
    score[2] = sum[1] + sum[3];
    score[3] = sum[2] + sum[3];

    /* return mode with lowest score */
    best = 0;
    for (i = 1; i < 4; i++)
        if (score[i] < score[best])
            best = i;

    return best;
}