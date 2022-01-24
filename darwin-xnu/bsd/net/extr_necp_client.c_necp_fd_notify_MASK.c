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
struct selinfo {int /*<<< orphan*/  si_note; } ;
struct necp_fd_data {struct selinfo si; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct selinfo*) ; 

__attribute__((used)) static void
FUNC4(struct necp_fd_data *fd_data, bool locked)
{
	struct selinfo *si = &fd_data->si;

	if (!locked) {
		FUNC1(fd_data);
	}

	FUNC3(si);

	// use a non-zero hint to tell the notification from the
	// call done in kqueue_scan() which uses 0
	FUNC0(&si->si_note, 1); // notification

	if (!locked) {
		FUNC2(fd_data);
	}
}