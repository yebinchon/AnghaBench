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
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  io_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  iokit_check_open ; 

int
FUNC1(kauth_cred_t cred, io_object_t user_client, unsigned int user_client_type)
{
	int error;

	FUNC0(iokit_check_open, cred, user_client, user_client_type);
	return (error);
}