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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(int M, int N, float *A)
{
    int i,j;
    for(i =0 ; i < M; ++i){
        FUNC0("%d ", i+1);
        for(j = 0; j < N; ++j){
            FUNC0("%2.4f, ", A[i*N+j]);
        }
        FUNC0("\n");
    }
    FUNC0("\n");
}