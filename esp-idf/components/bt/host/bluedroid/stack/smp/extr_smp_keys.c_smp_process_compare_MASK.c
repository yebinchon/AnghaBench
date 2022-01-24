#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  p_data; int /*<<< orphan*/  key_type; } ;
typedef  TYPE_1__ tSMP_KEY ;
struct TYPE_6__ {int /*<<< orphan*/  param_buf; } ;
typedef  TYPE_2__ tSMP_ENC ;
typedef  int /*<<< orphan*/  tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  SMP_KEY_READY_EVT ; 
 int /*<<< orphan*/  SMP_KEY_TYPE_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(tSMP_CB *p_cb, tSMP_ENC *p)
{
    tSMP_KEY    key;

    FUNC0 ("smp_process_compare \n");
#if (SMP_DEBUG == TRUE)
    FUNC0("Compare Generated\n");
    FUNC1 (p->param_buf,  (const UINT8 *)"Compare", 16);
#endif
    key.key_type = SMP_KEY_TYPE_CMP;
    key.p_data   = p->param_buf;
    //smp_set_state(SMP_STATE_CONFIRM);
    FUNC2(p_cb, SMP_KEY_READY_EVT, &key);
}