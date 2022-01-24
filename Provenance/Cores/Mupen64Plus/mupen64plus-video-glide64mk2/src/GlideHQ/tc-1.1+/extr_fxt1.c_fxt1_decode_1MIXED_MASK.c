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
 int FUNC0 (int const*,int) ; 
 size_t GCOMP ; 
 int FUNC1 (int,int,int,int) ; 
 size_t RCOMP ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

__attribute__((used)) static void
FUNC5 (const byte *code, int t, byte *rgba)
{
    const dword *cc;
    int col[2][3];
    int glsb, selb;

    cc = (const dword *)code;
    if (t & 16) {
	t &= 15;
	t = (cc[1] >> (t * 2)) & 3;
	/* col 2 */
	col[0][BCOMP] = (*(const dword *)(code + 11)) >> 6;
	col[0][GCOMP] = FUNC0(cc, 99);
	col[0][RCOMP] = FUNC0(cc, 104);
	/* col 3 */
	col[1][BCOMP] = FUNC0(cc, 109);
	col[1][GCOMP] = FUNC0(cc, 114);
	col[1][RCOMP] = FUNC0(cc, 119);
	glsb = FUNC0(cc, 126);
	selb = FUNC0(cc, 33);
    } else {
	t = (cc[0] >> (t * 2)) & 3;
	/* col 0 */
	col[0][BCOMP] = FUNC0(cc, 64);
	col[0][GCOMP] = FUNC0(cc, 69);
	col[0][RCOMP] = FUNC0(cc, 74);
	/* col 1 */
	col[1][BCOMP] = FUNC0(cc, 79);
	col[1][GCOMP] = FUNC0(cc, 84);
	col[1][RCOMP] = FUNC0(cc, 89);
	glsb = FUNC0(cc, 125);
	selb = FUNC0(cc, 1);
    }

    if (FUNC0(cc, 124) & 1) {
	/* alpha[0] == 1 */

	if (t == 3) {
	    FUNC4(rgba);
	} else {
	    if (t == 0) {
		rgba[BCOMP] = FUNC2(col[0][BCOMP]);
		rgba[GCOMP] = FUNC2(col[0][GCOMP]);
		rgba[RCOMP] = FUNC2(col[0][RCOMP]);
	    } else if (t == 2) {
		rgba[BCOMP] = FUNC2(col[1][BCOMP]);
		rgba[GCOMP] = FUNC3(col[1][GCOMP], glsb);
		rgba[RCOMP] = FUNC2(col[1][RCOMP]);
	    } else {
		rgba[BCOMP] = (FUNC2(col[0][BCOMP]) + FUNC2(col[1][BCOMP])) / 2;
		rgba[GCOMP] = (FUNC2(col[0][GCOMP]) + FUNC3(col[1][GCOMP], glsb)) / 2;
		rgba[RCOMP] = (FUNC2(col[0][RCOMP]) + FUNC2(col[1][RCOMP])) / 2;
	    }
	    rgba[ACOMP] = 255;
	}
    } else {
	/* alpha[0] == 0 */

	if (t == 0) {
	    rgba[BCOMP] = FUNC2(col[0][BCOMP]);
	    rgba[GCOMP] = FUNC3(col[0][GCOMP], glsb ^ selb);
	    rgba[RCOMP] = FUNC2(col[0][RCOMP]);
	} else if (t == 3) {
	    rgba[BCOMP] = FUNC2(col[1][BCOMP]);
	    rgba[GCOMP] = FUNC3(col[1][GCOMP], glsb);
	    rgba[RCOMP] = FUNC2(col[1][RCOMP]);
	} else {
	    rgba[BCOMP] = FUNC1(3, t, FUNC2(col[0][BCOMP]), FUNC2(col[1][BCOMP]));
	    rgba[GCOMP] = FUNC1(3, t, FUNC3(col[0][GCOMP], glsb ^ selb),
				     FUNC3(col[1][GCOMP], glsb));
	    rgba[RCOMP] = FUNC1(3, t, FUNC2(col[0][RCOMP]), FUNC2(col[1][RCOMP]));
	}
	rgba[ACOMP] = 255;
    }
}