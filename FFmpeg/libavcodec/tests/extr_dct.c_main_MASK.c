#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int const cpu_flag; scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 () ; 
 int FUNC3 (TYPE_1__*,int,int,int,int) ; 
 TYPE_1__* fdct_tab ; 
 TYPE_1__* fdct_tab_arch ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ff_simple_idct248_put ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* idct_tab ; 
 TYPE_1__* idct_tab_arch ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

int FUNC9(int argc, char **argv)
{
    int test_idct = 0, test_248_dct = 0;
    int c, i;
    int test = 1;
    int speed = 0;
    int err = 0;
    int bits=8;

    FUNC4();

    for (;;) {
        c = FUNC5(argc, argv, "ih4t");
        if (c == -1)
            break;
        switch (c) {
        case 'i':
            test_idct = 1;
            break;
        case '4':
            test_248_dct = 1;
            break;
        case 't':
            speed = 1;
            break;
        default:
        case 'h':
            FUNC6();
            return 0;
        }
    }

    if (optind < argc)
        test = FUNC1(argv[optind]);
    if(optind+1 < argc) bits= FUNC1(argv[optind+1]);

    FUNC8("ffmpeg DCT/IDCT test\n");

    if (test_248_dct) {
        FUNC7("SIMPLE-C", ff_simple_idct248_put, speed);
    } else {
        const int cpu_flags = FUNC2();
        if (test_idct) {
            for (i = 0; i < FUNC0(idct_tab); i++)
                err |= FUNC3(&idct_tab[i], test, test_idct, speed, bits);

            for (i = 0; idct_tab_arch[i].name; i++)
                if (!(~cpu_flags & idct_tab_arch[i].cpu_flag))
                    err |= FUNC3(&idct_tab_arch[i], test, test_idct, speed, bits);
        }
#if CONFIG_FDCTDSP
        else {
            for (i = 0; i < FF_ARRAY_ELEMS(fdct_tab); i++)
                err |= dct_error(&fdct_tab[i], test, test_idct, speed, bits);

            for (i = 0; fdct_tab_arch[i].name; i++)
                if (!(~cpu_flags & fdct_tab_arch[i].cpu_flag))
                    err |= dct_error(&fdct_tab_arch[i], test, test_idct, speed, bits);
        }
#endif /* CONFIG_FDCTDSP */
    }

    if (err)
        FUNC8("Error: %d.\n", err);

    return !!err;
}