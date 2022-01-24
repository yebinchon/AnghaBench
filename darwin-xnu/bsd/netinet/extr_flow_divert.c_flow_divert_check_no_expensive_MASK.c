#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inpcb {scalar_t__ inp_last_outifp; } ;
struct flow_divert_pcb {int /*<<< orphan*/  so; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EHOSTUNREACH ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct inpcb*) ; 
 struct inpcb* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC3(struct flow_divert_pcb *fd_cb)
{
	struct inpcb *inp = NULL;

	inp = FUNC2(fd_cb->so);
	if (inp && FUNC1(inp) && inp->inp_last_outifp &&
	    FUNC0(inp->inp_last_outifp))
		return EHOSTUNREACH;
	
	return 0;
}