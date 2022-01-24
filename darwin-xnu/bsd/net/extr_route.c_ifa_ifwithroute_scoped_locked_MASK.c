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
struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 unsigned int IFSCOPE_NONE ; 
 int RTF_IFSCOPE ; 
 struct ifaddr* FUNC0 (int,struct sockaddr const*,struct sockaddr const*,unsigned int) ; 

struct ifaddr *
FUNC1(int flags, const struct sockaddr *dst,
    const struct sockaddr *gateway, unsigned int ifscope)
{
	if (ifscope != IFSCOPE_NONE)
		flags |= RTF_IFSCOPE;
	else
		flags &= ~RTF_IFSCOPE;

	return (FUNC0(flags, dst, gateway, ifscope));
}