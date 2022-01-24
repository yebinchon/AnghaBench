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
struct TYPE_3__ {scalar_t__ event; scalar_t__ in_use; } ;
typedef  TYPE_1__ tGAP_INFO ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* blk; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GAP_MAX_BLOCKS ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ gap_cb ; 

BOOLEAN FUNC0 (UINT16 request)
{
    tGAP_INFO   *p_cb = &gap_cb.blk[0];
    UINT8        x;

    for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++) {
        if (p_cb->in_use && p_cb->event == request) {
            return (TRUE);
        }
    }

    /* If here, service is not busy */
    return (FALSE);
}