#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tSMP_STATUS ;
typedef  int /*<<< orphan*/  tSMP_INT_DATA ;
struct TYPE_8__ {int /*<<< orphan*/  param_buf; } ;
typedef  TYPE_1__ tSMP_ENC ;
struct TYPE_9__ {int div; scalar_t__ csrk; scalar_t__ smp_over_br; } ;
typedef  TYPE_2__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  BT_OCTET16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int /*<<< orphan*/  SMP_AUTH_CMPL_EVT ; 
 int /*<<< orphan*/  SMP_BR_AUTH_CMPL_EVT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  SMP_PAIR_FAIL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    FUNC5(p_data);

    BT_OCTET16  er;
    UINT8       buffer[4]; /* for (r || DIV)  r=1*/
    UINT16      r = 1;
    UINT8       *p = buffer;
    tSMP_ENC    output;
    tSMP_STATUS   status = SMP_PAIR_FAIL_UNKNOWN;

    FUNC2 ("smp_compute_csrk div=%x\n", p_cb->div);
    FUNC0(er);
    /* CSRK = d1(ER, DIV, 1) */
    FUNC4(p, p_cb->div);
    FUNC4(p, r);

    if (!FUNC1(er, BT_OCTET16_LEN, buffer, 4, &output)) {
        FUNC3("smp_generate_csrk failed\n");
        if (p_cb->smp_over_br) {
#if (CLASSIC_BT_INCLUDED == TRUE)
            FUNC7(p_cb, SMP_BR_AUTH_CMPL_EVT, &status);
#endif  ///CLASSIC_BT_INCLUDED == TRUE
        } else {
            FUNC9(p_cb, SMP_AUTH_CMPL_EVT, &status);
        }
    } else {
        FUNC6((void *)p_cb->csrk, output.param_buf, BT_OCTET16_LEN);
        FUNC8(p_cb, NULL);
    }
}