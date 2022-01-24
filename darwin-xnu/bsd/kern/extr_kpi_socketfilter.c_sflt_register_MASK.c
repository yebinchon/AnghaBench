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
struct sflt_filter {int dummy; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sflt_filter const*,int,int,int,int) ; 

errno_t
FUNC1(const struct sflt_filter *filter, int domain, int type,
    int	 protocol)
{
	return (FUNC0(filter, domain, type, protocol, false));
}