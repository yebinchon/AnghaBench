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
struct kevent_qos_s {int ident; int qos; int /*<<< orphan*/  udata; int /*<<< orphan*/  flags; int /*<<< orphan*/  filter; } ;
typedef  int /*<<< orphan*/  kqueue_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_USER ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EXPECTED_UDATA ; 
 int KEVENT_FLAG_IMMEDIATE ; 
 int KEVENT_FLAG_WORKLOOP ; 
 int /*<<< orphan*/  QOS_CLASS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kevent_qos_s*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(kqueue_id_t id)
{
	struct kevent_qos_s events_id[] = {{
		.filter = EVFILT_USER,
		.ident = 1,
		.flags = EV_ADD,
		.qos = (int)FUNC1(QOS_CLASS_DEFAULT, 0, 0),
		.udata = EXPECTED_UDATA
	}};

	int err = FUNC2(id, events_id, 1, NULL, 0, NULL, NULL, KEVENT_FLAG_WORKLOOP | KEVENT_FLAG_IMMEDIATE);
	FUNC0(err, "register event with kevent_id");
}