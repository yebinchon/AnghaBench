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

__attribute__((used)) static inline void FUNC1(uint8_t *p0_p, ptrdiff_t stride, int alpha, int beta)
{
    int p0 = P0;
    int q0 = Q0;

    if(FUNC0(p0-q0)<alpha && FUNC0(P1-p0)<beta && FUNC0(Q1-q0)<beta) {
        int s = p0 + q0 + 2;
        alpha = (alpha>>2) + 2;
        if(FUNC0(P2-p0) < beta && FUNC0(p0-q0) < alpha) {
            P0 = (P1 + p0 + s) >> 2;
        } else
            P0 = (2*P1 + s) >> 2;
        if(FUNC0(Q2-q0) < beta && FUNC0(q0-p0) < alpha) {
            Q0 = (Q1 + q0 + s) >> 2;
        } else
            Q0 = (2*Q1 + s) >> 2;
    }
}