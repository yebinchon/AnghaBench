#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Connected; int /*<<< orphan*/  InProcRecvFifo; TYPE_1__* RecvTube; TYPE_1__* SendTube; int /*<<< orphan*/  Type; } ;
struct TYPE_7__ {int /*<<< orphan*/  Ref; } ;
typedef  TYPE_1__ TUBE ;
typedef  TYPE_2__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  SOCK_INPROC ; 

SOCK *FUNC3(TUBE *tube_send, TUBE *tube_recv)
{
	SOCK *s;
	// Validate arguments
	if (tube_recv == NULL || tube_send == NULL)
	{
		return NULL;
	}

	s = FUNC2();

	s->Type = SOCK_INPROC;

	s->SendTube = tube_send;
	s->RecvTube = tube_recv;

	FUNC0(tube_send->Ref);
	FUNC0(tube_recv->Ref);

	s->InProcRecvFifo = FUNC1();

	s->Connected = true;

	return s;
}