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
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  CopyConnectionState ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC3(HTAB *connectionStateHash)
{
	List *connectionStateList = NIL;
	HASH_SEQ_STATUS status;
	CopyConnectionState *connectionState = NULL;

	FUNC0(&status, connectionStateHash);

	connectionState = (CopyConnectionState *) FUNC1(&status);
	while (connectionState != NULL)
	{
		connectionStateList = FUNC2(connectionStateList, connectionState);

		connectionState = (CopyConnectionState *) FUNC1(&status);
	}

	return connectionStateList;
}