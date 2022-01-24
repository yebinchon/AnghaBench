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
typedef  int /*<<< orphan*/  int32 ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_dist_node_metadatasynced ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC1(char *nodeName, int32 nodePort, bool synced)
{
	FUNC0(nodeName, nodePort,
						   Anum_pg_dist_node_metadatasynced,
						   synced);
}