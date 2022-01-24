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
typedef  int /*<<< orphan*/  sflt_handle ;
typedef  int /*<<< orphan*/  sflt_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct socket *so, sflt_event_t event,
    sflt_handle handle)
{
	FUNC0(so, event, NULL, handle);
}