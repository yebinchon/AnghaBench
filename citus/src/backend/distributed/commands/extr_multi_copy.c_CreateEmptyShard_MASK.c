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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  master_create_empty_shard ; 

__attribute__((used)) static int64
FUNC4(char *relationName)
{
	int64 shardId = 0;

	text *relationNameText = FUNC3(relationName);
	Datum relationNameDatum = FUNC2(relationNameText);
	Datum shardIdDatum = FUNC1(master_create_empty_shard,
											 relationNameDatum);
	shardId = FUNC0(shardIdDatum);

	return shardId;
}