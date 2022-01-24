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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  GATTS_TABLE_TAG ; 
 int /*<<< orphan*/  cmd_cmd_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC6(void * arg)
{
    uint8_t * cmd_id;

    for(;;){
        FUNC3(50 / portTICK_PERIOD_MS);
        if(FUNC5(cmd_cmd_queue, &cmd_id, portMAX_DELAY)) {
            FUNC0(GATTS_TABLE_TAG,(char *)(cmd_id),FUNC2((char *)cmd_id));
            FUNC1(cmd_id);
        }
    }
    FUNC4(NULL);
}