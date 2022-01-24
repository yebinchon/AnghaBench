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
 int P0 ; 
 int P1 ; 
 int P2 ; 
 int Q0 ; 
 int Q1 ; 
 int Q2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(uint8_t *p0_p, ptrdiff_t stride, int alpha, int beta, int tc)
{
    int p0 = P0;
    int q0 = Q0;

    if(FUNC0(p0-q0)<alpha && FUNC0(P1-p0)<beta && FUNC0(Q1-q0)<beta) {
        int delta = FUNC1(((q0-p0)*3+P1-Q1+4)>>3,-tc, tc);
        P0 = FUNC2(p0+delta);
        Q0 = FUNC2(q0-delta);
        if(FUNC0(P2-p0)<beta) {
            delta = FUNC1(((P0-P1)*3+P2-Q0+4)>>3, -tc, tc);
            P1 = FUNC2(P1+delta);
        }
        if(FUNC0(Q2-q0)<beta) {
            delta = FUNC1(((Q1-Q0)*3+P0-Q2+4)>>3, -tc, tc);
            Q1 = FUNC2(Q1-delta);
        }
    }
}