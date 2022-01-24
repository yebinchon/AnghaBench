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
struct TYPE_4__ {int ListenMode; int Connected; int /*<<< orphan*/  ReverseAcceptEvent; int /*<<< orphan*/  ReverseAcceptQueue; int /*<<< orphan*/  Type; } ;
typedef  TYPE_1__ SOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  SOCK_REVERSE_LISTEN ; 

SOCK *FUNC3()
{
	SOCK *s = FUNC2();

	s->Type = SOCK_REVERSE_LISTEN;
	s->ListenMode = true;
	s->ReverseAcceptQueue = FUNC1();
	s->ReverseAcceptEvent = FUNC0();
	s->Connected = true;

	return s;
}