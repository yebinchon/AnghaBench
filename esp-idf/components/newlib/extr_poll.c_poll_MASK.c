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
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  nfds_t ;

/* Variables and functions */
 int FUNC0 (struct pollfd*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct pollfd *fds, nfds_t nfds, int timeout)
{
    return FUNC0(fds, nfds, timeout);
}