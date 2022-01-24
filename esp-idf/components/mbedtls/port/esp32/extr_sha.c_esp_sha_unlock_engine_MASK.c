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
typedef  int /*<<< orphan*/  esp_sha_type ;
typedef  int /*<<< orphan*/  SemaphoreHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  PERIPH_SHA_MODULE ; 
 scalar_t__ engines_in_use ; 
 int /*<<< orphan*/  engines_in_use_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(esp_sha_type sha_type)
{
    SemaphoreHandle_t *engine_state = FUNC3(sha_type);

    FUNC1(&engines_in_use_lock);

    engines_in_use--;

    if (engines_in_use == 0) {
        /* About to release last engine, so
           disable SHA hardware */
        FUNC0(PERIPH_SHA_MODULE);
    }

    FUNC2(&engines_in_use_lock);

    FUNC4(engine_state);
}