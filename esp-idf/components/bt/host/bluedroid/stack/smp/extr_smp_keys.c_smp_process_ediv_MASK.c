#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * p_data; int /*<<< orphan*/  key_type; } ;
typedef  TYPE_1__ tSMP_KEY ;
struct TYPE_9__ {int /*<<< orphan*/ * param_buf; } ;
typedef  TYPE_2__ tSMP_ENC ;
struct TYPE_10__ {int ediv; int div; } ;
typedef  TYPE_3__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  SMP_KEY_READY_EVT ; 
 int /*<<< orphan*/  SMP_KEY_TYPE_LTK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(tSMP_CB *p_cb, tSMP_ENC *p)
{
    tSMP_KEY    key;
    UINT8 *pp = p->param_buf;
    UINT16  y;

    FUNC0 ("smp_process_ediv ");
    FUNC1(y, pp);

    /* EDIV = Y xor DIV */
    p_cb->ediv = p_cb->div ^ y;
    /* send LTK ready */
    FUNC0("LTK ready");
    key.key_type = SMP_KEY_TYPE_LTK;
    key.p_data   = p->param_buf;

    FUNC2(p_cb, SMP_KEY_READY_EVT, &key);
}