#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  layer_specific; int /*<<< orphan*/  event; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_AG_DATA ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_CI_SLC_READY_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(UINT16 handle)
{
    tBTA_AG_DATA *p_buf;
    if ((p_buf = (tBTA_AG_DATA *)FUNC1(sizeof(tBTA_AG_DATA))) != NULL) {
        p_buf->hdr.event = BTA_AG_CI_SLC_READY_EVT;
        p_buf->hdr.layer_specific = handle;
        FUNC0(p_buf);
    }
}