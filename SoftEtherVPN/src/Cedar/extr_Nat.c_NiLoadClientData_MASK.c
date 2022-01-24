#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  ClientOption; } ;
typedef  TYPE_1__ NAT ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(NAT *n, FOLDER *root)
{
	FOLDER *co, *ca;
	// Validate arguments
	if (n == NULL || root == NULL)
	{
		return;
	}

	co = FUNC0(root, "VpnClientOption");
	ca = FUNC0(root, "VpnClientAuth");
	if (co == NULL || ca == NULL)
	{
		return;
	}

	n->ClientOption = FUNC2(co);
	n->ClientAuth = FUNC1(ca);
}