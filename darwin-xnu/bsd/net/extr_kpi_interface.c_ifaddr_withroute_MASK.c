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
typedef  int /*<<< orphan*/ * ifaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,struct sockaddr const*,struct sockaddr const*) ; 

ifaddr_t
FUNC1(int flags, const struct sockaddr *destination,
    const struct sockaddr *gateway)
{
	if (destination == NULL || gateway == NULL)
		return (NULL);

	return (FUNC0(flags, destination, gateway));
}