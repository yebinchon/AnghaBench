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
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  error ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *pvParameters)
{
    int l;
    FUNC2(0x1234);
    FUNC3((int)pvParameters / portTICK_PERIOD_MS);
    l = FUNC1();
    FUNC0("Rand1: %d\n", l);
    if (l != 869320854) {
        error++;
    }
    FUNC3((int)pvParameters / portTICK_PERIOD_MS);
    l = FUNC1();
    FUNC0("Rand2: %d\n", l);
    if (l != 1148737841) {
        error++;
    }
    done++;
    FUNC4(NULL);
}