#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {TYPE_1__ fcr; } ;
struct TYPE_7__ {TYPE_2__ peer_cfg; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  L2CAP_FCR_BASIC_MODE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UINT8 FUNC2 (UINT16 lcid)
{
    tL2C_CCB    *p_ccb = FUNC1 (NULL, lcid);

    if (p_ccb) {
        FUNC0 ("L2CA_GetChnlFcrMode() returns mode %d", p_ccb->peer_cfg.fcr.mode);
        return (p_ccb->peer_cfg.fcr.mode);
    }

    FUNC0 ("L2CA_GetChnlFcrMode() returns mode L2CAP_FCR_BASIC_MODE");
    return (L2CAP_FCR_BASIC_MODE);
}