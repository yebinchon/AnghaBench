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
struct kevent_qos_s {unsigned long long ident; int flags; int fflags; int data; int /*<<< orphan*/  filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_MACHPORT ; 
 int EV_ADD ; 
 int EV_DISPATCH ; 
 int EV_ENABLE ; 
 int EV_UDATA_SPECIFIC ; 
 int EV_VANISHED ; 
 int /*<<< orphan*/  MACH_MSG_TRAILER_FORMAT_0 ; 
 int MACH_RCV_LARGE ; 
 int MACH_RCV_LARGE_IDENTITY ; 
 int MACH_RCV_MSG ; 
 int /*<<< orphan*/  MACH_RCV_TRAILER_CTX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kevent_qos_s*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct kevent_qos_s *kev, unsigned long long port)
{

	FUNC2(kev, 0, sizeof(struct kevent_qos_s));
	kev->ident = port;
	kev->filter = EVFILT_MACHPORT;
	kev->flags = EV_ADD | EV_ENABLE | EV_UDATA_SPECIFIC | EV_DISPATCH | EV_VANISHED;
	kev->fflags = (MACH_RCV_MSG | MACH_RCV_LARGE | MACH_RCV_LARGE_IDENTITY |
		FUNC0(MACH_RCV_TRAILER_CTX) |
		FUNC1(MACH_MSG_TRAILER_FORMAT_0));
	kev->data = 1;

}