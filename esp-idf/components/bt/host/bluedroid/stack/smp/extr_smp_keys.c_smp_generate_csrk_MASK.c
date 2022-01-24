#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSMP_INT_DATA ;
struct TYPE_4__ {int /*<<< orphan*/  rand_enc_proc_state; int /*<<< orphan*/  div; int /*<<< orphan*/  pairing_bda; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  SMP_GEN_DIV_CSRK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    FUNC1(p_data);

    BOOLEAN     div_status;

    FUNC0 ("smp_generate_csrk");

    div_status = FUNC2(p_cb->pairing_bda, &p_cb->div);
    if (div_status) {
        FUNC4(p_cb, NULL);
    } else {
        FUNC0 ("Generate DIV for CSRK");
        p_cb->rand_enc_proc_state = SMP_GEN_DIV_CSRK;
        if (!FUNC3((void *)smp_rand_back)) {
            FUNC5(NULL);
        }
    }
}