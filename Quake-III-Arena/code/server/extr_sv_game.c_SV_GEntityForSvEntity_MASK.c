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
typedef  int /*<<< orphan*/  svEntity_t ;
typedef  int /*<<< orphan*/  sharedEntity_t ;
struct TYPE_2__ {int /*<<< orphan*/ * svEntities; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 TYPE_1__ sv ; 

sharedEntity_t *FUNC1( svEntity_t *svEnt ) {
	int		num;

	num = svEnt - sv.svEntities;
	return FUNC0( num );
}