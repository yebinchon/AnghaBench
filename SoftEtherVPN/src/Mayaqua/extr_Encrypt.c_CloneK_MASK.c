#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  private_key; } ;
typedef  TYPE_1__ K ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

K *FUNC3(K *k)
{
	BUF *b;
	K *ret;
	// Validate arguments
	if (k == NULL)
	{
		return NULL;
	}

	b = FUNC2(k, false, NULL);
	if (b == NULL)
	{
		return NULL;
	}

	ret = FUNC0(b, k->private_key, false, NULL);
	FUNC1(b);

	return ret;
}