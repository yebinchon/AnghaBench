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
typedef  int /*<<< orphan*/  temp_cred ;
struct ucred {int /*<<< orphan*/  cr_posix; } ;
typedef  int /*<<< orphan*/ * posix_cred_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucred*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*) ; 

kauth_cred_t
FUNC2(posix_cred_t pcred)
{
	struct ucred temp_cred;

	FUNC0(&temp_cred, sizeof(temp_cred));
	temp_cred.cr_posix = *pcred;

	return FUNC1(&temp_cred);
}