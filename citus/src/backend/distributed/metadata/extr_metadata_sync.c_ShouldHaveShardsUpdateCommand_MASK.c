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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

char *
FUNC2(uint32 nodeId, bool shouldHaveShards)
{
	StringInfo nodeStateUpdateCommand = FUNC1();
	char *shouldHaveShardsString = shouldHaveShards ? "TRUE" : "FALSE";

	FUNC0(nodeStateUpdateCommand,
					 "UPDATE pg_catalog.pg_dist_node SET shouldhaveshards = %s "
					 "WHERE nodeid = %u", shouldHaveShardsString, nodeId);

	return nodeStateUpdateCommand->data;
}