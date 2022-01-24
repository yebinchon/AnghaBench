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

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int INT_MIN ; 
 int FUNC1 (int,int) ; 
 scalar_t__* lwc_adj_tab ; 
 int** lwc_gain_tab ; 

__attribute__((used)) static void FUNC2(int *msk_val)
{
    int lwc_val[17] = { 0 };
    int i, j, k;

    for (i = 0; i < 11; i++) {
        int max_j = 0;
        int max_v = INT_MIN;
        int thr   = 0;

        for (j = FUNC0(i - 3, 0), k = 0; j <= i + 3; j++, k++) {
            int v = msk_val[j] + lwc_gain_tab[i][k];
            if (v > max_v) {
                max_j = j;
                max_v = v;
            }
            thr = FUNC1(thr, v);
        }

        if (msk_val[i] < thr) {
            for (j = FUNC0(max_j - 3, 0),
                 k = FUNC0(3 - max_j, 0);
                 j <= max_j + 3; j++, k++)
                lwc_val[j] += lwc_adj_tab[k];
        }
    }

    for (i = 0; i < 16; i++) {
        int v = FUNC0(lwc_val[i], -512);
        msk_val[i] = FUNC0(msk_val[i] + v, 0);
    }
}