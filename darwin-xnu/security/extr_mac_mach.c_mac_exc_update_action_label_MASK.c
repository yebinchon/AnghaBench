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
struct label {int dummy; } ;
struct exception_action {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct exception_action*,int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  exc_action_label_update ; 

int
FUNC1(struct exception_action *action,
							struct label *newlabel) {
	int error;
	
	FUNC0(exc_action_label_update, action, action->label, newlabel);
	
	return (error);
}