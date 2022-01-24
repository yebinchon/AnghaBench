#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  isNulls ;
typedef  int int32 ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_3__ {char* nodeRack; int /*<<< orphan*/  shouldHaveShards; int /*<<< orphan*/  nodeRole; int /*<<< orphan*/  isActive; int /*<<< orphan*/  metadataSynced; int /*<<< orphan*/  hasMetadata; int /*<<< orphan*/  groupId; int /*<<< orphan*/  nodeCluster; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ NodeMetadata ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_dist_node_groupid ; 
 int Anum_pg_dist_node_hasmetadata ; 
 int Anum_pg_dist_node_isactive ; 
 int Anum_pg_dist_node_metadatasynced ; 
 int Anum_pg_dist_node_nodecluster ; 
 int Anum_pg_dist_node_nodeid ; 
 int Anum_pg_dist_node_nodename ; 
 int Anum_pg_dist_node_nodeport ; 
 int Anum_pg_dist_node_noderack ; 
 int Anum_pg_dist_node_noderole ; 
 int Anum_pg_dist_node_shouldhaveshards ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int Natts_pg_dist_node ; 
 int /*<<< orphan*/  NoLock ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int,int) ; 
 int /*<<< orphan*/  namein ; 

__attribute__((used)) static void
FUNC16(int nodeid, char *nodeName, int32 nodePort, NodeMetadata *nodeMetadata)
{
	Relation pgDistNode = NULL;
	TupleDesc tupleDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_node];
	bool isNulls[Natts_pg_dist_node];

	Datum nodeClusterStringDatum = FUNC1(nodeMetadata->nodeCluster);
	Datum nodeClusterNameDatum = FUNC6(namein, nodeClusterStringDatum);

	/* form new shard tuple */
	FUNC15(values, 0, sizeof(values));
	FUNC15(isNulls, false, sizeof(isNulls));

	values[Anum_pg_dist_node_nodeid - 1] = FUNC11(nodeid);
	values[Anum_pg_dist_node_groupid - 1] = FUNC8(nodeMetadata->groupId);
	values[Anum_pg_dist_node_nodename - 1] = FUNC2(nodeName);
	values[Anum_pg_dist_node_nodeport - 1] = FUNC11(nodePort);
	values[Anum_pg_dist_node_noderack - 1] = FUNC2(nodeMetadata->nodeRack);
	values[Anum_pg_dist_node_hasmetadata - 1] = FUNC0(nodeMetadata->hasMetadata);
	values[Anum_pg_dist_node_metadatasynced - 1] = FUNC0(
		nodeMetadata->metadataSynced);
	values[Anum_pg_dist_node_isactive - 1] = FUNC0(nodeMetadata->isActive);
	values[Anum_pg_dist_node_noderole - 1] = FUNC9(nodeMetadata->nodeRole);
	values[Anum_pg_dist_node_nodecluster - 1] = nodeClusterNameDatum;
	values[Anum_pg_dist_node_shouldhaveshards - 1] = FUNC0(
		nodeMetadata->shouldHaveShards);

	pgDistNode = FUNC14(FUNC7(), RowExclusiveLock);

	tupleDescriptor = FUNC10(pgDistNode);
	heapTuple = FUNC13(tupleDescriptor, values, isNulls);

	FUNC3(pgDistNode, heapTuple);

	FUNC4(FUNC7());

	/* increment the counter so that next command can see the row */
	FUNC5();

	/* close relation */
	FUNC12(pgDistNode, NoLock);
}