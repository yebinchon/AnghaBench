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
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 struct waitq* FUNC0 (int /*<<< orphan*/ ) ; 

struct waitq *
FUNC1(
	event_t				event)
{
	return FUNC0(event);
}