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
struct socket {int /*<<< orphan*/  so_label; } ;
struct inpcb {int /*<<< orphan*/  inp_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,struct inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inpcb_label_associate ; 

void
FUNC1(struct socket *so, struct inpcb *inp)
{

	FUNC0(inpcb_label_associate, so, so->so_label, inp,
	    inp->inp_label);
}