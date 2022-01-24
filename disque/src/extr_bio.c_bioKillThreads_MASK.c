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
 int BIO_NUM_OPS ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/ * bio_threads ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
    int err, j;

    for (j = 0; j < BIO_NUM_OPS; j++) {
        if (FUNC0(bio_threads[j]) == 0) {
            if ((err = FUNC1(bio_threads[j],NULL)) != 0) {
                FUNC2(LL_WARNING,
                    "Bio thread for job type #%d can be joined: %s",
                        j, FUNC3(err));
            } else {
                FUNC2(LL_WARNING,
                    "Bio thread for job type #%d terminated",j);
            }
        }
    }
}