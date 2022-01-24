#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct flipc_port {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  flipc_port_zone ; 
 int ipc_port_max ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(void)
{
    /* Create zone for flipc ports.
     * TODO: Pick a better max value than ipc_port_max>>4
     */
    flipc_port_zone = FUNC0(sizeof(struct flipc_port),
                            (ipc_port_max>>4) * sizeof(struct flipc_port),
                            sizeof(struct flipc_port),
                            "flipc ports");

    FUNC1(flipc_port_zone, Z_CALLERACCT, FALSE);
    FUNC1(flipc_port_zone, Z_NOENCRYPT, TRUE);
    return KERN_SUCCESS;
}