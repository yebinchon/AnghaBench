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
typedef  int /*<<< orphan*/  uint64_t ;
struct kevent_qos_s {int flags; int data; int /*<<< orphan*/  fflags; int /*<<< orphan*/  qos; int /*<<< orphan*/  filter; int /*<<< orphan*/  ident; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int EV_DISPATCH ; 
 int EV_ENABLE ; 
 int EV_UDATA_SPECIFIC ; 
 int /*<<< orphan*/  EXPECTED_QOS ; 
 int KEVENT_FLAG_ERROR_EVENTS ; 
 int KEVENT_FLAG_WORKQ ; 
 int /*<<< orphan*/  NOTE_LOWAT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct kevent_qos_s*,int,struct kevent_qos_s*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(int fd, int16_t filt)
{
	struct kevent_qos_s events[] = {{
		.ident = (uint64_t)fd,
		.filter = filt,
		.flags = EV_ENABLE | EV_UDATA_SPECIFIC | EV_DISPATCH,
		.qos = (int32_t)FUNC1(EXPECTED_QOS,
				0, 0),
		.fflags = NOTE_LOWAT,
		.data = 1
	}};

	int kev = FUNC2(-1, events, 1, events, 1, NULL, NULL,
			KEVENT_FLAG_WORKQ | KEVENT_FLAG_ERROR_EVENTS);
	T_QUIET; FUNC0(kev, "reenable workq in kevent_qos");
}