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
typedef  int /*<<< orphan*/  tSMP_CALLBACK ;
struct TYPE_2__ {int /*<<< orphan*/ * p_callback; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ smp_cb ; 

BOOLEAN FUNC2 (tSMP_CALLBACK *p_cback)
{
    FUNC1 ("SMP_Register state=%d", smp_cb.state);

    if (smp_cb.p_callback != NULL) {
        FUNC0 ("SMP_Register: duplicate registration, overwrite it");
    }
    smp_cb.p_callback = p_cback;

    return (TRUE);

}