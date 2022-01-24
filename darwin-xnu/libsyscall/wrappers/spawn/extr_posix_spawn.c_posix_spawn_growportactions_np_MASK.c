#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * posix_spawnattr_t ;
typedef  TYPE_1__* _posix_spawnattr_t ;
typedef  TYPE_2__* _posix_spawn_port_actions_t ;
struct TYPE_6__ {int pspa_alloc; } ;
struct TYPE_5__ {TYPE_2__* psa_ports; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,size_t) ; 

__attribute__((used)) static int
FUNC3(posix_spawnattr_t *attr)
{
	_posix_spawnattr_t psattr;
	_posix_spawn_port_actions_t acts; 

	if (attr == NULL || *attr == NULL)
		return EINVAL;

	psattr = *(_posix_spawnattr_t *)attr;
	acts = psattr->psa_ports; 
	if (acts == NULL)
		return EINVAL;
	
	/* Double number of port actions allocated for */
	int newnum = 0;
	if (FUNC1(acts->pspa_alloc, 2, &newnum))
		return ENOMEM;
	size_t newsize = FUNC0(newnum);
	if (newsize == 0)
		return ENOMEM;

	acts = FUNC2(acts, newsize);
	if (acts == NULL)
		return ENOMEM;
	
	acts->pspa_alloc = newnum;
	psattr->psa_ports = acts;
	return 0;
}