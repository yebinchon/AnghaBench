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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(uint8_t *d, ptrdiff_t stride, int alpha, int beta, int tc,
                             int bs1, int bs2)
{
    int i;
    if(bs1==2)
        for(i=0;i<16;i++)
            FUNC1(d + i,stride,alpha,beta);
    else {
        if(bs1)
            for(i=0;i<8;i++)
                FUNC0(d + i,stride,alpha,beta,tc);
        if (bs2)
            for(i=8;i<16;i++)
                FUNC0(d + i,stride,alpha,beta,tc);
    }
}