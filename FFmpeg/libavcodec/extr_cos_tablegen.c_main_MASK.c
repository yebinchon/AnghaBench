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
 int BITS ; 
 int M_PI ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (double,int) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int argc, char *argv[])
{
    int i, j;
    int do_sin = argc > 1 && !FUNC4(argv[1], "sin");
    int fixed  = argc > 1 &&  FUNC5(argv[1], "fixed");
    double (*func)(double) = do_sin ? sin : cos;

    FUNC1("/* This file was automatically generated. */\n");
    FUNC1("#define FFT_FLOAT %d\n", !fixed);
    FUNC1("#include \"libavcodec/%s\"\n", do_sin ? "rdft.h" : "fft.h");
    for (i = 4; i <= BITS; i++) {
        int m = 1 << i;
        double freq = 2*M_PI/m;
        FUNC1("%s(%i) = {\n   ", do_sin ? "SINTABLE" : "COSTABLE", m);
        for (j = 0; j < m/2 - 1; j++) {
            int idx = j > m/4 ? m/2 - j : j;
            if (do_sin && j >= m/4)
                idx = m/4 - j;
            FUNC2(func(idx*freq), fixed);
            if ((j & 3) == 3)
                FUNC1("\n   ");
        }
        FUNC2(func(do_sin ? -(m/4 - 1)*freq : freq), fixed);
        FUNC1("\n};\n");
    }
    return 0;
}