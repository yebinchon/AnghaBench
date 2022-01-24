#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ BTA_AG_INIT_ST ; 
 scalar_t__ BTA_AG_OPENING_ST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC4 (tBTA_AG_SCB *p_scb)
{
    if (p_scb) {
        FUNC0 ("bta_ag_resume_open, Handle(%d)", FUNC2(p_scb));
        /* resume opening process.  */
        if (p_scb->state == BTA_AG_INIT_ST) {
            p_scb->state = BTA_AG_OPENING_ST;
            FUNC3 (p_scb, NULL);
        }
    } else {
        FUNC1 ("bta_ag_resume_open, Null p_scb");
    }
}