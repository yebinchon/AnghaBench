#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_GATTC_DATA ;
struct TYPE_3__ {int /*<<< orphan*/ * p_q_cmd; int /*<<< orphan*/  p_cmd_list; } ;
typedef  TYPE_1__ tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  list_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(tBTA_GATTC_CLCB *p_clcb)
{
    FUNC0(p_clcb->p_cmd_list);
    //Check the list is empty or not.
    if (!FUNC3(p_clcb->p_cmd_list)) {
        /* Traversal the command queue, check the p_q_cmd is point to the queue data or not, if the p_q_cmd point to the
           command queue,should remove it from the list */
        for (list_node_t *node = FUNC1(p_clcb->p_cmd_list); node != FUNC2(p_clcb->p_cmd_list);
             node = FUNC4(node)) {
            tBTA_GATTC_DATA *p_data = (tBTA_GATTC_DATA *)FUNC5(node);
            if (p_data == p_clcb->p_q_cmd) {
                FUNC6(p_clcb->p_cmd_list, (void *)p_data);
                p_clcb->p_q_cmd = NULL;
                return;
            }
        }

        FUNC7(p_clcb->p_q_cmd);
        p_clcb->p_q_cmd = NULL;
    } else {
        FUNC7(p_clcb->p_q_cmd);
        p_clcb->p_q_cmd = NULL;
    }
}