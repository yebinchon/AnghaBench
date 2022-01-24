#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ database; scalar_t__ username; scalar_t__ response; } ;
typedef  TYPE_1__ network_mysqld_auth_response ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(network_mysqld_auth_response *auth) {
	if (!auth) return;

	if (auth->response)          FUNC1(auth->response, TRUE);
	if (auth->username)          FUNC1(auth->username, TRUE);
	if (auth->database)          FUNC1(auth->database, TRUE);

	FUNC0(auth);
}