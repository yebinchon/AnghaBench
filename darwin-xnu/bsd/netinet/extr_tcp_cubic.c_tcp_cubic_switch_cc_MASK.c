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
typedef  int /*<<< orphan*/  uint16_t ;
struct tcpcb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_sockets; } ;
typedef  int /*<<< orphan*/  SInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  volatile*) ; 
 TYPE_1__ tcp_cc_cubic ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 

__attribute__((used)) static void
FUNC2(struct tcpcb *tp, uint16_t old_cc_index)
{
#pragma unused(old_cc_index)
	FUNC1(tp);

	FUNC0((volatile SInt32 *)&tcp_cc_cubic.num_sockets);
}