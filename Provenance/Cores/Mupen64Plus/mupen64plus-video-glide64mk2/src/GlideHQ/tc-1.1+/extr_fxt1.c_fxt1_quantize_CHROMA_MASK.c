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
typedef  int /*<<< orphan*/  qword ;
typedef  int dword ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int MAX_COMP ; 
 int MAX_VECT ; 
 int N_TEXELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (float**,int const,int /*<<< orphan*/ *,int const) ; 
 scalar_t__ FUNC4 (float**,int const,int /*<<< orphan*/ **,int const,int) ; 
 int /*<<< orphan*/  FUNC5 (float**,int const,int /*<<< orphan*/ **,int const,int) ; 

__attribute__((used)) static void
FUNC6 (dword *cc,
		      byte input[N_TEXELS][MAX_COMP])
{
    const int n_vect = 4; /* 4 base vectors to find */
    const int n_comp = 3; /* 3 components: R, G, B */
    float vec[MAX_VECT][MAX_COMP];
    int i, j, k;
    qword hi; /* high quadword */
    dword lohi, lolo; /* low quadword: hi dword, lo dword */

    if (FUNC4(vec, n_vect, input, n_comp, N_TEXELS) != 0) {
	FUNC5(vec, n_vect, input, n_comp, N_TEXELS);
    }

    FUNC0(hi, 4); /* cc-chroma = "010" + unused bit */
    for (j = n_vect - 1; j >= 0; j--) {
	for (i = 0; i < n_comp; i++) {
	    /* add in colors */
	    FUNC2(hi, 5);
	    FUNC1(hi, (dword)(vec[j][i] / 8.0F));
	}
    }
    ((qword *)cc)[1] = hi;

    lohi = lolo = 0;
    /* right microtile */
    for (k = N_TEXELS - 1; k >= N_TEXELS / 2; k--) {
	lohi <<= 2;
	lohi |= FUNC3(vec, n_vect, input[k], n_comp);
    }
    /* left microtile */
    for (; k >= 0; k--) {
	lolo <<= 2;
	lolo |= FUNC3(vec, n_vect, input[k], n_comp);
    }
    cc[1] = lohi;
    cc[0] = lolo;
}