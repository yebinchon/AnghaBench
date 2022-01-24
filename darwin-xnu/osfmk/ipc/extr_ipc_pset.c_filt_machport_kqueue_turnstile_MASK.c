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
struct turnstile {int dummy; } ;
struct knote {int kn_sfflags; int kn_status; } ;

/* Variables and functions */
 int KN_DISPATCH ; 
 int MACH_RCV_MSG ; 
 struct turnstile* TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct knote*) ; 
 struct turnstile* FUNC1 (int /*<<< orphan*/ ) ; 

struct turnstile *
FUNC2(struct knote *kn)
{
	if ((kn->kn_sfflags & MACH_RCV_MSG) && (kn->kn_status & KN_DISPATCH)) {
		return FUNC1(FUNC0(kn));
	}
	return TURNSTILE_NULL;
}