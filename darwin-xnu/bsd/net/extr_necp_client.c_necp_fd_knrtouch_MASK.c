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
struct necp_fd_data {int dummy; } ;
struct knote {scalar_t__ kn_hook; } ;
struct kevent_internal_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct necp_fd_data*) ; 
 int POLLIN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct necp_fd_data*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct knote *kn, struct kevent_internal_s *kev)
{
#pragma unused(kev)
	struct necp_fd_data *fd_data;
	int revents;

	fd_data = (struct necp_fd_data *)kn->kn_hook;

	FUNC0(fd_data);
	revents = FUNC3(fd_data, POLLIN, NULL, FUNC2(), 1);
	FUNC1(fd_data);

	return ((revents & POLLIN) != 0);
}