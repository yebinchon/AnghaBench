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

/* Variables and functions */
 struct waitq* global_waitqs ; 
 size_t FUNC0 (char*,size_t) ; 

struct waitq *FUNC1(char *event, size_t event_length)
{
	return &global_waitqs[FUNC0(event, event_length)];
}