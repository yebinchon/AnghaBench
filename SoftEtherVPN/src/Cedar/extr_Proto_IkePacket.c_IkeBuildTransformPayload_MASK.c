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
struct TYPE_7__ {int /*<<< orphan*/  ValueList; int /*<<< orphan*/  TransformId; int /*<<< orphan*/  Number; } ;
struct TYPE_6__ {int /*<<< orphan*/  TransformId; int /*<<< orphan*/  Number; } ;
typedef  TYPE_1__ IKE_TRANSFORM_HEADER ;
typedef  TYPE_2__ IKE_PACKET_TRANSFORM_PAYLOAD ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

BUF *FUNC6(IKE_PACKET_TRANSFORM_PAYLOAD *t)
{
	IKE_TRANSFORM_HEADER h;
	BUF *ret, *b;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	FUNC5(&h, sizeof(h));
	h.Number = t->Number;
	h.TransformId = t->TransformId;

	ret = FUNC2();
	FUNC3(ret, &h, sizeof(h));

	b = FUNC1(t->ValueList);
	FUNC4(ret, b);

	FUNC0(b);

	return ret;
}