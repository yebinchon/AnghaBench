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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int F ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ **,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char *argv[])
{
    FILE *f[2];
    int len = 1;
    int shift_first= argc < 5 ? 0 : FUNC0(argv[4]);
    int skip_bytes = argc < 6 ? 0 : FUNC0(argv[5]);
    int shift_last = shift_first + (argc < 7 ? 0 : FUNC0(argv[6]));
    int shift;
    int max_psnr   = -1;
    int max_psnr_shift = 0;

    if (shift_last > shift_first)
        shift_first -= shift_last - shift_first;

    if (argc > 3) {
        if (!FUNC5(argv[3], "u8")) {
            len = 1;
        } else if (!FUNC5(argv[3], "s16")) {
            len = 2;
        } else if (!FUNC5(argv[3], "f32")) {
            len = 4;
        } else if (!FUNC5(argv[3], "f64")) {
            len = 8;
        } else {
            char *end;
            len = FUNC6(argv[3], &end, 0);
            if (*end || len < 1 || len > 2) {
                FUNC2(stderr, "Unsupported sample format: %s\nSupported: u8, s16, f32, f64\n", argv[3]);
                return 1;
            }
        }
    }

    if (argc < 3) {
        FUNC3("tiny_psnr <file1> <file2> [<elem size>|u8|s16|f32|f64 [<shift> [<skip bytes> [<shift search range>]]]]\n");
        FUNC3("WAV headers are skipped automatically.\n");
        return 1;
    }

    f[0] = FUNC1(argv[1], "rb");
    f[1] = FUNC1(argv[2], "rb");
    if (!f[0] || !f[1]) {
        FUNC2(stderr, "Could not open input files.\n");
        return 1;
    }

    for (shift = shift_first; shift <= shift_last; shift++) {
        int psnr = FUNC4(f, len, shift, skip_bytes);
        if (psnr > max_psnr || (shift < 0 && psnr == max_psnr)) {
            max_psnr = psnr;
            max_psnr_shift = shift;
        }
    }
    if (max_psnr < 0)
        return 2;

    if (shift_last > shift_first)
        FUNC3("Best PSNR is %3d.%02d for shift %i\n", (int)(max_psnr / F), (int)(max_psnr % F), max_psnr_shift);
    return 0;
}