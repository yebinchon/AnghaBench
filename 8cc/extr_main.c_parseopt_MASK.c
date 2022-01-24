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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cppdefs ; 
 int cpponly ; 
 int dontlink ; 
 int dumpasm ; 
 int /*<<< orphan*/  dumpast ; 
 int enable_warning ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* infile ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(int argc, char **argv) {
    cppdefs = FUNC4();
    for (;;) {
        int opt = FUNC3(argc, argv, "I:ED:O:SU:W:acd:f:gm:o:hw");
        if (opt == -1)
            break;
        switch (opt) {
        case 'I': FUNC0(optarg); break;
        case 'E': cpponly = true; break;
        case 'D': {
            char *p = FUNC8(optarg, '=');
            if (p)
                *p = ' ';
            FUNC1(cppdefs, "#define %s\n", optarg);
            break;
        }
        case 'O': break;
        case 'S': dumpasm = true; break;
        case 'U':
            FUNC1(cppdefs, "#undef %s\n", optarg);
            break;
        case 'W': FUNC7(optarg); break;
        case 'c': dontlink = true; break;
        case 'f': FUNC5(optarg); break;
        case 'm': FUNC6(optarg); break;
        case 'g': break;
        case 'o': outfile = optarg; break;
        case 'w': enable_warning = false; break;
        case 'h':
            FUNC9(0);
        default:
            FUNC9(1);
        }
    }
    if (optind != argc - 1)
        FUNC9(1);

    if (!dumpast && !cpponly && !dumpasm && !dontlink)
        FUNC2("One of -a, -c, -E or -S must be specified");
    infile = argv[optind];
}