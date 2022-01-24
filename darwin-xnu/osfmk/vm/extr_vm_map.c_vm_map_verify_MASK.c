#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ main_timestamp; } ;
typedef  TYPE_1__ vm_map_version_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  int boolean_t ;
struct TYPE_7__ {scalar_t__ timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

boolean_t
FUNC1(
	vm_map_t		map,
	vm_map_version_t	*version)	/* REF */
{
	boolean_t	result;

	FUNC0(map);
	result = (map->timestamp == version->main_timestamp);

	return(result);
}