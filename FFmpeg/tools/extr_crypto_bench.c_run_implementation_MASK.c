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
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct hash_impl {char* lib; char* name; int /*<<< orphan*/  (* run ) (int*,int const*,unsigned int) ;scalar_t__ output; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int MAX_OUTPUT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int FUNC2 (int*,unsigned int) ; 
 scalar_t__ enabled_algos ; 
 scalar_t__ enabled_libs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int*,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,unsigned int,unsigned int,double,double) ; 
 int specified_runs ; 
 double FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int*,int const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int const*,unsigned int) ; 

__attribute__((used)) static void FUNC14(const uint8_t *input, uint8_t *output,
                               struct hash_impl *impl, unsigned size)
{
    uint64_t t0, t1;
    unsigned nruns = specified_runs ? specified_runs : (1 << 30) / size;
    unsigned outlen = 0, outcrc = 0;
    unsigned i, j, val;
    double mtime, ttime = 0, ttime2 = 0, stime;
    uint8_t outref[MAX_OUTPUT_SIZE];

    if (enabled_libs  && !FUNC1(enabled_libs,  impl->lib) ||
        enabled_algos && !FUNC1(enabled_algos, impl->name))
        return;
    if (!FUNC10(impl->output, "crc:%x", &outcrc)) {
        outlen = FUNC11(impl->output) / 2;
        for (i = 0; i < outlen; i++) {
            FUNC10(impl->output + i * 2, "%02x", &val);
            outref[i] = val;
        }
    }
    for (i = 0; i < 8; i++) /* heat caches */
        impl->run(output, input, size);
    for (i = 0; i < nruns; i++) {
        FUNC7(output, 0, size); /* avoid leftovers from previous runs */
        t0 = FUNC0();
        impl->run(output, input, size);
        t1 = FUNC0();
        if (outlen ? FUNC6(output, outref, outlen) :
                     FUNC2(output, size) != outcrc) {
            FUNC5(stderr, "Expected: ");
            if (outlen)
                for (j = 0; j < outlen; j++)
                    FUNC5(stderr, "%02x", output[j]);
            else
                FUNC5(stderr, "%08x", FUNC2(output, size));
            FUNC5(stderr, "\n");
            FUNC3("output mismatch");
        }
        mtime = (double)(t1 - t0) / size;
        ttime  += mtime;
        ttime2 += mtime * mtime;
    }

    ttime  /= nruns;
    ttime2 /= nruns;
    stime = FUNC9(ttime2 - ttime * ttime);
    FUNC8("%-10s %-12s size: %7d  runs: %6d  time: %8.3f +- %.3f\n",
           impl->lib, impl->name, size, nruns, ttime, stime);
    FUNC4(stdout);
}