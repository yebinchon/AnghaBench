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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 size_t ACOMP ; 
 size_t BCOMP ; 
 int FUNC0 (int const*,int) ; 
 size_t GCOMP ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t RCOMP ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (const byte *code, int t, byte *rgba)
{
    const dword *cc;

    cc = (const dword *)code;
    if (FUNC0(cc, 124) & 1) {
	/* lerp == 1 */
	int col0[4];

	if (t & 16) {
	    t &= 15;
	    t = (cc[1] >> (t * 2)) & 3;
	    /* col 2 */
	    col0[BCOMP] = (*(const dword *)(code + 11)) >> 6;
	    col0[GCOMP] = FUNC0(cc, 99);
	    col0[RCOMP] = FUNC0(cc, 104);
	    col0[ACOMP] = FUNC0(cc, 119);
	} else {
	    t = (cc[0] >> (t * 2)) & 3;
	    /* col 0 */
	    col0[BCOMP] = FUNC0(cc, 64);
	    col0[GCOMP] = FUNC0(cc, 69);
	    col0[RCOMP] = FUNC0(cc, 74);
	    col0[ACOMP] = FUNC0(cc, 109);
	}

	if (t == 0) {
	    rgba[BCOMP] = FUNC2(col0[BCOMP]);
	    rgba[GCOMP] = FUNC2(col0[GCOMP]);
	    rgba[RCOMP] = FUNC2(col0[RCOMP]);
	    rgba[ACOMP] = FUNC2(col0[ACOMP]);
	} else if (t == 3) {
	    rgba[BCOMP] = FUNC2(FUNC0(cc, 79));
	    rgba[GCOMP] = FUNC2(FUNC0(cc, 84));
	    rgba[RCOMP] = FUNC2(FUNC0(cc, 89));
	    rgba[ACOMP] = FUNC2(FUNC0(cc, 114));
	} else {
	    rgba[BCOMP] = FUNC1(3, t, FUNC2(col0[BCOMP]), FUNC2(FUNC0(cc, 79)));
	    rgba[GCOMP] = FUNC1(3, t, FUNC2(col0[GCOMP]), FUNC2(FUNC0(cc, 84)));
	    rgba[RCOMP] = FUNC1(3, t, FUNC2(col0[RCOMP]), FUNC2(FUNC0(cc, 89)));
	    rgba[ACOMP] = FUNC1(3, t, FUNC2(col0[ACOMP]), FUNC2(FUNC0(cc, 114)));
	}
    } else {
	/* lerp == 0 */

	if (t & 16) {
	    cc++;
	    t &= 15;
	}
	t = (cc[0] >> (t * 2)) & 3;

	if (t == 3) {
	    FUNC3(rgba);
	} else {
	    dword kk;
	    cc = (const dword *)code;
	    rgba[ACOMP] = FUNC2(cc[3] >> (t * 5 + 13));
	    t *= 15;
	    cc = (const dword *)(code + 8 + t / 8);
	    kk = cc[0] >> (t & 7);
	    rgba[BCOMP] = FUNC2(kk);
	    rgba[GCOMP] = FUNC2(kk >> 5);
	    rgba[RCOMP] = FUNC2(kk >> 10);
	}
    }
}