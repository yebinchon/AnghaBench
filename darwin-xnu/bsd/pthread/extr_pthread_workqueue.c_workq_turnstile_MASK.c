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
struct workqueue {struct turnstile* wq_turnstile; } ;
struct turnstile {int dummy; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 struct turnstile* TURNSTILE_NULL ; 
 struct workqueue* FUNC0 (struct proc*) ; 

struct turnstile *
FUNC1(struct proc *p)
{
	struct workqueue *wq = FUNC0(p);
	return wq ? wq->wq_turnstile : TURNSTILE_NULL;
}