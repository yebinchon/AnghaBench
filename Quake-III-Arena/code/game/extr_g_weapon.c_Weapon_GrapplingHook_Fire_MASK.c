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
struct TYPE_6__ {TYPE_1__* client; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_5__ {scalar_t__ fireHeld; int /*<<< orphan*/  hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forward ; 
 int /*<<< orphan*/  muzzle ; 
 scalar_t__ qtrue ; 

void FUNC1 (gentity_t *ent)
{
	if (!ent->client->fireHeld && !ent->client->hook)
		FUNC0 (ent, muzzle, forward);

	ent->client->fireHeld = qtrue;
}