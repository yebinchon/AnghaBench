#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  RxSbcQ; } ;
struct TYPE_4__ {TYPE_1__ btc_aa_snk_cb; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_MEDIA_FLUSH_AA_RX ; 
 scalar_t__ TRUE ; 
 TYPE_2__ a2dp_sink_local_param ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC2(void)
{
    if (FUNC1(a2dp_sink_local_param.btc_aa_snk_cb.RxSbcQ) == TRUE) { /*  Que is already empty */
        return TRUE;
    }

    return FUNC0(BTC_MEDIA_FLUSH_AA_RX, NULL);
}