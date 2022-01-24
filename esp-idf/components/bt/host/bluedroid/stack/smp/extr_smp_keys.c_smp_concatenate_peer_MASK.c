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
struct TYPE_3__ {int /*<<< orphan*/  peer_r_key; int /*<<< orphan*/  peer_i_key; int /*<<< orphan*/  peer_enc_size; int /*<<< orphan*/  peer_auth_req; int /*<<< orphan*/  peer_oob_flag; int /*<<< orphan*/  peer_io_caps; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2( tSMP_CB *p_cb, UINT8 **p_data, UINT8 op_code)
{
    UINT8   *p = *p_data;

    FUNC0 ("smp_concatenate_peer \n");
    FUNC1(p, op_code);
    FUNC1(p, p_cb->peer_io_caps);
    FUNC1(p, p_cb->peer_oob_flag);
    FUNC1(p, p_cb->peer_auth_req);
    FUNC1(p, p_cb->peer_enc_size);
    FUNC1(p, p_cb->peer_i_key);
    FUNC1(p, p_cb->peer_r_key);

    *p_data = p;
}