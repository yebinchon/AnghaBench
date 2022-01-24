#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pairing_disabled; int /*<<< orphan*/  connect_only_paired; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ btm_cb ; 

void FUNC1 (BOOLEAN allow_pairing, BOOLEAN connect_only_paired)
{
    FUNC0 ("BTM_SetPairableMode()  allow_pairing: %u   connect_only_paired: %u\n", allow_pairing, connect_only_paired);

    btm_cb.pairing_disabled    = !allow_pairing;
    btm_cb.connect_only_paired = connect_only_paired;
}