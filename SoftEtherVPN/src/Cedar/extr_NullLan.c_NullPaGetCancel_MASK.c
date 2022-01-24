#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ref; } ;
struct TYPE_9__ {TYPE_4__* Cancel; } ;
struct TYPE_8__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_7__ {TYPE_3__* Param; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ NULL_LAN ;
typedef  TYPE_4__ CANCEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

CANCEL *FUNC1(SESSION *s)
{
	// Validate arguments
	NULL_LAN *n;
	if (s == NULL || (n = s->PacketAdapter->Param) == NULL)
	{
		return NULL;
	}

	FUNC0(n->Cancel->ref);

	return n->Cancel;
}