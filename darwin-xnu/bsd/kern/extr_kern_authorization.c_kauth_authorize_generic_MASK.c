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
typedef  int /*<<< orphan*/ * kauth_cred_t ;
typedef  int /*<<< orphan*/  kauth_action_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kauth_scope_generic ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2(kauth_cred_t credential, kauth_action_t action)
{
	if (credential == NULL)
		FUNC1("auth against NULL credential");

	return(FUNC0(kauth_scope_generic, credential, action, 0, 0, 0, 0));
		
}