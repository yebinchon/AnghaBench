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
typedef  int /*<<< orphan*/  TickType_t ;
typedef  int /*<<< orphan*/  SemaphoreHandle_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  PERIPH_SHA_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int engines_in_use ; 
 int /*<<< orphan*/  engines_in_use_lock ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(esp_sha_type sha_type, TickType_t ticks_to_wait)
{
    SemaphoreHandle_t engine_state = FUNC4(sha_type);
    BaseType_t result = FUNC5(engine_state, ticks_to_wait);

    if (result == pdFALSE) {
        // failed to take semaphore
        return false;
    }

    FUNC2(&engines_in_use_lock);

    if (engines_in_use == 0) {
        /* Just locked first engine,
           so enable SHA hardware */
        FUNC1(PERIPH_SHA_MODULE);
    }

    engines_in_use++;
    FUNC0(engines_in_use <= 3);

    FUNC3(&engines_in_use_lock);

    return true;
}