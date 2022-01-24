#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {TYPE_1__* Session; } ;
struct TYPE_4__ {int Timeout; } ;
typedef  TYPE_2__ CONNECTION ;

/* Variables and functions */
 int INFINITE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 

UINT FUNC2(CONNECTION *c)
{
	UINT a, b;
	// Validate arguments
	if (c == NULL)
	{
		return INFINITE;
	}

	a = c->Session->Timeout;
	b = FUNC1() % (a / 2);
	b = FUNC0(b, a / 5);

	return b;
}