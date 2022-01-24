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
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * cli_handle ; 
 int /*<<< orphan*/ * cli_task ; 
 int /*<<< orphan*/  scli_task ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,void*,int,int /*<<< orphan*/ **) ; 

int FUNC3(void)
{
    /* Register CLI "key <value>" to accept input from user during pairing */
    FUNC0();

    FUNC2(scli_task, "scli_cli", 4096, (void *) 0, 3, &cli_task);
    if (cli_task == NULL) {
        return ESP_FAIL;
    }
    cli_handle = FUNC1( 1, sizeof(int) );
    if (cli_handle == NULL) {
        return ESP_FAIL;
    }
    return ESP_OK;
}