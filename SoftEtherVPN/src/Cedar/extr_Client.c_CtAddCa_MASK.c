#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int is_compatible_bit; } ;
struct TYPE_9__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_8__ {TYPE_7__* x; } ;
typedef  TYPE_1__ RPC_CERT ;
typedef  TYPE_2__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_NOT_RSA_1024 ; 

bool FUNC3(CLIENT *c, RPC_CERT *cert)
{
	// Validate arguments
	if (c == NULL || cert == NULL)
	{
		return false;
	}

	if (cert->x->is_compatible_bit == false)
	{
		FUNC2(c, ERR_NOT_RSA_1024);
		return false;
	}

	FUNC0(c->Cedar, cert->x);

	FUNC1(c);

	return true;
}