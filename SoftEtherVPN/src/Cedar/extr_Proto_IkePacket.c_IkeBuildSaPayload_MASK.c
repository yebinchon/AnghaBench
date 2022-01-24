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
typedef  int /*<<< orphan*/  h ;
struct TYPE_7__ {int /*<<< orphan*/  PayloadList; } ;
struct TYPE_6__ {void* Situation; void* DoI; } ;
typedef  TYPE_1__ IKE_SA_HEADER ;
typedef  TYPE_2__ IKE_PACKET_SA_PAYLOAD ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IKE_SA_DOI_IPSEC ; 
 int /*<<< orphan*/  IKE_SA_SITUATION_IDENTITY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

BUF *FUNC7(IKE_PACKET_SA_PAYLOAD *t)
{
	IKE_SA_HEADER h;
	BUF *ret;
	BUF *b;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC6(&h, sizeof(h));
	h.DoI = FUNC0(IKE_SA_DOI_IPSEC);
	h.Situation = FUNC0(IKE_SA_SITUATION_IDENTITY);

	ret = FUNC3();

	FUNC4(ret, &h, sizeof(h));

	b = FUNC2(t->PayloadList);
	FUNC5(ret, b);

	FUNC1(b);

	return ret;
}