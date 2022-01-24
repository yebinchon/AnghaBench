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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int UINT32_MAX ; 
 int FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 unsigned long long FUNC8 () ; 
 void* state ; 

int FUNC9(int argc, char **argv)
{
    FILE *f;
    int count, maxburst, length;

    if (argc < 5) {
        FUNC7("USAGE: trasher <filename> <count> <maxburst> <seed>\n");
        return 1;
    }

    f = FUNC3(argv[1], "rb+");
    if (!f) {
        FUNC6(argv[1]);
        return 2;
    }
    count    = FUNC1(argv[2]);
    maxburst = FUNC1(argv[3]);
    state    = FUNC1(argv[4]);

    FUNC2(f, 0, SEEK_END);
    length = FUNC4(f);
    FUNC2(f, 0, SEEK_SET);

    while (count--) {
        int burst = 1 + FUNC8() * (uint64_t) (FUNC0(maxburst) - 1) / UINT32_MAX;
        int pos   = FUNC8() * (uint64_t) length / UINT32_MAX;
        FUNC2(f, pos, SEEK_SET);

        if (maxburst < 0)
            burst = -maxburst;

        if (pos + burst > length)
            continue;

        while (burst--) {
            int val = FUNC8() * 256ULL / UINT32_MAX;

            if (maxburst < 0)
                val = 0;

            FUNC5(&val, 1, 1, f);
        }
    }

    return 0;
}