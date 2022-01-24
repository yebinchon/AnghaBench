#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  L2TP_DefaultHub; int /*<<< orphan*/  IPsec_Secret; void* EtherIP_IPsec; void* L2TP_IPsec; void* L2TP_Raw; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ IPSEC_SERVICES ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(IPSEC_SERVICES *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(IPSEC_SERVICES));

	t->L2TP_Raw = FUNC0(p, "L2TP_Raw");
	t->L2TP_IPsec = FUNC0(p, "L2TP_IPsec");
	t->EtherIP_IPsec = FUNC0(p, "EtherIP_IPsec");

	FUNC1(p, "IPsec_Secret", t->IPsec_Secret, sizeof(t->IPsec_Secret));
	FUNC1(p, "L2TP_DefaultHub", t->L2TP_DefaultHub, sizeof(t->L2TP_DefaultHub));
}