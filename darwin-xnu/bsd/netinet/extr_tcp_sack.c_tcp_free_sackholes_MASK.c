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
struct TYPE_2__ {int /*<<< orphan*/ * nexthole; scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {scalar_t__ sack_newdata; TYPE_1__ sackhint; int /*<<< orphan*/  snd_holes; } ;
struct sackhole {int dummy; } ;

/* Variables and functions */
 struct sackhole* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*,struct sackhole*) ; 

void
FUNC2(struct tcpcb *tp)
{
	struct sackhole *q;

	while ((q = FUNC0(&tp->snd_holes)) != NULL)
		FUNC1(tp, q);
	tp->sackhint.sack_bytes_rexmit = 0;
	tp->sackhint.nexthole = NULL;
	tp->sack_newdata = 0;

}