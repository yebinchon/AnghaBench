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
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct socket*,struct sockaddr const*) ; 
 struct socket* FUNC1 (struct socket*,int) ; 

struct socket *
FUNC2(struct socket *head, int connstatus, const struct sockaddr *from)
{
	int error = FUNC0(head, from);
	if (error) {
		return (NULL);
	}

	return (FUNC1(head, connstatus));
}