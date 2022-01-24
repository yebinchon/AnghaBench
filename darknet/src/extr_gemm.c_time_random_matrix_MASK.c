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
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 float CLOCKS_PER_SEC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int,float*,int,float*,int,int,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int,int,int,float) ; 
 float* FUNC4 (int,int) ; 

void FUNC5(int TA, int TB, int m, int k, int n)
{
    float *a;
    if(!TA) a = FUNC4(m,k);
    else a = FUNC4(k,m);
    int lda = (!TA)?k:m;
    float *b;
    if(!TB) b = FUNC4(k,n);
    else b = FUNC4(n,k);
    int ldb = (!TB)?n:k;

    float *c = FUNC4(m,n);
    int i;
    clock_t start = FUNC0(), end;
    for(i = 0; i<10; ++i){
        FUNC2(TA,TB,m,n,k,1,a,lda,b,ldb,1,c,n);
    }
    end = FUNC0();
    FUNC3("Matrix Multiplication %dx%d * %dx%d, TA=%d, TB=%d: %lf ms\n",m,k,k,n, TA, TB, (float)(end-start)/CLOCKS_PER_SEC);
    FUNC1(a);
    FUNC1(b);
    FUNC1(c);
}