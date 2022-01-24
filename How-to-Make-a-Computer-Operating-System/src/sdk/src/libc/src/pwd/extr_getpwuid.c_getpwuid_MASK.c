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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  passwd_myos ;

/* Variables and functions */
 struct passwd __tmp_passwd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

struct passwd* FUNC2( uid_t uid ) {

	passwd_myos* pass=FUNC1(uid);
	if (pass==NULL)
		return NULL;
	
	FUNC0();
	return &__tmp_passwd;
}