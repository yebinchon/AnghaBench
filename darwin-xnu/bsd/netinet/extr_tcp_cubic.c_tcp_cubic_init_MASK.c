#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcpcb {int /*<<< orphan*/ * t_ccstate; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_sockets; } ;
typedef  int /*<<< orphan*/  SInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  volatile*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ tcp_cc_cubic ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 

__attribute__((used)) static int FUNC3(struct tcpcb *tp)
{
	FUNC0((volatile SInt32 *)&tcp_cc_cubic.num_sockets);

	FUNC1(tp->t_ccstate != NULL);
	FUNC2(tp);
	return (0);
}