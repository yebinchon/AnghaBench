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
 int ctr ; 
 scalar_t__ lock ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int state ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *pvParameters)
{
    int x;
    int err = 0, run = 0;
    while (1) {
        ctr = 0; lock = 0;
        state = 1;
        for (x = 0; x < 16 * 1024; x++) {
            FUNC1(&lock, 1, 0, &ctr);
        }
        FUNC2(60 / portTICK_PERIOD_MS);
        state = 2;
        if (ctr != 16 * 1024 * 2) {
            FUNC0("Lock malfunction detected! Ctr=0x%x instead of %x\n", ctr, 16 * 1024 * 2);
            err++;
        }
        run++;
        FUNC0("Run %d err %d\n", run, err);
        FUNC2(20 / portTICK_PERIOD_MS);
    }
}