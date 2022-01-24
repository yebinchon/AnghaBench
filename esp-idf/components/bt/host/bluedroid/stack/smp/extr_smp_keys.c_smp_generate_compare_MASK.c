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
struct TYPE_4__ {int /*<<< orphan*/  local_bda; scalar_t__ rrand; int /*<<< orphan*/  rand_enc_proc_state; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  SMP_GEN_COMPARE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

void FUNC4 (tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    FUNC1(p_data);

    FUNC0 ("smp_generate_compare \n");
    p_cb->rand_enc_proc_state = SMP_GEN_COMPARE;
    FUNC3 ((UINT8 *)p_cb->rrand,  (const UINT8 *)"peer rand", 16);
    FUNC2(p_cb, p_cb->rrand, p_cb->local_bda);
}