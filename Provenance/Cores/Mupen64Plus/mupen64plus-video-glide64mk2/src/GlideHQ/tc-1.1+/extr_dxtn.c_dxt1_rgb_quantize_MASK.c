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
 size_t BCOMP ; 
 int /*<<< orphan*/  FUNC0 (int,int,int const,float*,float,int*) ; 
 int FUNC1 (int*) ; 
 size_t GCOMP ; 
 int /*<<< orphan*/  FUNC2 (int,int const,float*,float,int*,int*) ; 
 int MAX_COMP ; 
 int N_TEXELS ; 
 size_t RCOMP ; 
 int** dxtn_color_tlat ; 

__attribute__((used)) static void
FUNC3 (dword *cc, const byte *lines[], int comps)
{
    float b, iv[MAX_COMP];   /* interpolation vector */

    dword hi; /* high doubleword */
    int color0, color1;
    int n_vect;
    const int n_comp = 3;
    int black = 0;

#ifndef YUV
    int minSum = 2000; /* big enough */
#else
    int minSum = 2000000;
#endif
    int maxSum = -1; /* small enough */
    int minCol = 0; /* phoudoin: silent compiler! */
    int maxCol = 0; /* phoudoin: silent compiler! */

    byte input[N_TEXELS][MAX_COMP];
    int i, k, l;

    /* make the whole block opaque */
    /* we will NEVER reference ACOMP of any pixel */

    /* 4 texels each line */
#ifndef ARGB
    for (l = 0; l < 4; l++) {
	for (k = 0; k < 4; k++) {
	    for (i = 0; i < comps; i++) {
		input[k + l * 4][i] = *lines[l]++;
	    }
	}
    }
#else
    /* H.Morii - support for ARGB inputs */
    for (l = 0; l < 4; l++) {
	for (k = 0; k < 4; k++) {
          input[k + l * 4][2] = *lines[l]++;
          input[k + l * 4][1] = *lines[l]++;
          input[k + l * 4][0] = *lines[l]++;
          if (comps == 4) input[k + l * 4][3] = *lines[l]++;
	}
    }
#endif

    /* Our solution here is to find the darkest and brightest colors in
     * the 4x4 tile and use those as the two representative colors.
     * There are probably better algorithms to use (histogram-based).
     */
    for (k = 0; k < N_TEXELS; k++) {
	int sum = 0;
#ifndef YUV
	for (i = 0; i < n_comp; i++) {
	    sum += input[k][i];
	}
#else
        /* RGB to YUV conversion according to CCIR 601 specs
         * Y = 0.299R+0.587G+0.114B
         * U = 0.713(R - Y) = 0.500R-0.419G-0.081B
         * V = 0.564(B - Y) = -0.169R-0.331G+0.500B
         */
        sum = 299 * input[k][RCOMP] + 587 * input[k][GCOMP] +  114 * input[k][BCOMP];
#endif
	if (minSum > sum) {
	    minSum = sum;
	    minCol = k;
	}
	if (maxSum < sum) {
	    maxSum = sum;
	    maxCol = k;
	}
	if (sum == 0) {
	    black = 1;
	}
    }

    color0 = FUNC1(input[minCol]);
    color1 = FUNC1(input[maxCol]);

    if (color0 == color1) {
	/* we'll use 3-vector */
	cc[0] = color0 | (color1 << 16);
	hi = black ? -1 : 0;
    } else {
	if (black && ((color0 == 0) || (color1 == 0))) {
	    /* we still can use 4-vector */
	    black = 0;
	}

	if (black ^ (color0 <= color1)) {
	    int aux;
	    aux = color0;
	    color0 = color1;
	    color1 = aux;
	    aux = minCol;
	    minCol = maxCol;
	    maxCol = aux;
	}
	n_vect = (color0 <= color1) ? 2 : 3;

	FUNC2(n_vect, n_comp, iv, b, input[minCol], input[maxCol]);

	/* add in texels */
	cc[0] = color0 | (color1 << 16);
	hi = 0;
	for (k = N_TEXELS - 1; k >= 0; k--) {
	    int texel = 3;
	    int sum = 0;
	    if (black) {
		for (i = 0; i < n_comp; i++) {
		    sum += input[k][i];
		}
	    }
	    if (!black || sum) {
		/* interpolate color */
		FUNC0(texel, n_vect, n_comp, iv, b, input[k]);
		texel = dxtn_color_tlat[black][texel];
	    }
	    /* add in texel */
	    hi <<= 2;
	    hi |= texel;
	}
    }
    cc[1] = hi;
}