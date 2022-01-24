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
 int /*<<< orphan*/  FUNC0 (int,int,int,float,float*,int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,float,float*,int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,float,float*,int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,float,float*,int,float*,int,float*,int) ; 

void FUNC4(int TA, int TB, int M, int N, int K, float ALPHA, 
        float *A, int lda, 
        float *B, int ldb,
        float BETA,
        float *C, int ldc)
{
    //printf("cpu: %d %d %d %d %d %f %d %d %f %d\n",TA, TB, M, N, K, ALPHA, lda, ldb, BETA, ldc);
    int i, j;
    for(i = 0; i < M; ++i){
        for(j = 0; j < N; ++j){
            C[i*ldc + j] *= BETA;
        }
    }
    if(!TA && !TB)
        FUNC0(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
    else if(TA && !TB)
        FUNC2(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
    else if(!TA && TB)
        FUNC1(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
    else
        FUNC3(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
}