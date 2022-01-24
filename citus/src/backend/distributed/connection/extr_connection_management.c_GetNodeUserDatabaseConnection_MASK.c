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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  MultiConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,char const*) ; 

MultiConnection *
FUNC2(uint32 flags, const char *hostname, int32 port, const
							  char *user, const char *database)
{
	MultiConnection *connection;

	connection = FUNC1(flags, hostname, port, user, database);

	FUNC0(connection);

	return connection;
}