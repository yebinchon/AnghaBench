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
typedef  int dword ;
typedef  int byte ;

/* Variables and functions */
 size_t ACOMP ; 
 size_t BCOMP ; 
 int /*<<< orphan*/  FUNC0 (int const*,int) ; 
 size_t GCOMP ; 
 int FUNC1 (int,int,int,int) ; 
 size_t RCOMP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static void
FUNC4 (const byte *code, int t, byte *rgba)
{
    const dword *cc;

    t *= 3;
    cc = (const dword *)(code + t / 8);
    t = (cc[0] >> (t & 7)) & 7;

    if (t == 7) {
	FUNC3(rgba);
    } else {
	cc = (const dword *)(code + 12);
	if (t == 0) {
	    rgba[BCOMP] = FUNC2(FUNC0(cc, 0));
	    rgba[GCOMP] = FUNC2(FUNC0(cc, 5));
	    rgba[RCOMP] = FUNC2(FUNC0(cc, 10));
	} else if (t == 6) {
	    rgba[BCOMP] = FUNC2(FUNC0(cc, 15));
	    rgba[GCOMP] = FUNC2(FUNC0(cc, 20));
	    rgba[RCOMP] = FUNC2(FUNC0(cc, 25));
	} else {
	    rgba[BCOMP] = FUNC1(6, t, FUNC2(FUNC0(cc, 0)), FUNC2(FUNC0(cc, 15)));
	    rgba[GCOMP] = FUNC1(6, t, FUNC2(FUNC0(cc, 5)), FUNC2(FUNC0(cc, 20)));
	    rgba[RCOMP] = FUNC1(6, t, FUNC2(FUNC0(cc, 10)), FUNC2(FUNC0(cc, 25)));
	}
	rgba[ACOMP] = 255;
    }
}