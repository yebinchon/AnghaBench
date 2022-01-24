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
typedef  int /*<<< orphan*/  info ;
struct TYPE_4__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ HASHCTL ;
typedef  int /*<<< orphan*/  DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DistTableCacheHash ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int HASH_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MetadataCacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  tag_hash ; 

__attribute__((used)) static void
FUNC2(void)
{
	HASHCTL info;
	FUNC0(&info, 0, sizeof(info));
	info.keysize = sizeof(Oid);
	info.entrysize = sizeof(DistTableCacheEntry);
	info.hash = tag_hash;
	info.hcxt = MetadataCacheMemoryContext;
	DistTableCacheHash =
		FUNC1("Distributed Relation Cache", 32, &info,
					HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);
}