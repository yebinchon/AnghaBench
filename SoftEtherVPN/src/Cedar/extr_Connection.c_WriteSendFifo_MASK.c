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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  SendFifo; } ;
typedef  TYPE_1__ TCPSOCK ;
typedef  int /*<<< orphan*/  SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void FUNC1(SESSION *s, TCPSOCK *ts, void *data, UINT size)
{
	// Validate arguments
	if (s == NULL || ts == NULL || data == NULL)
	{
		return;
	}

	FUNC0(ts->SendFifo, data, size);
}