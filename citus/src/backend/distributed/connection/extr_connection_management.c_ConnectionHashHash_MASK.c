#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  database; int /*<<< orphan*/  user; int /*<<< orphan*/  port; int /*<<< orphan*/  hostname; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ ConnectionHashKey ;

/* Variables and functions */
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32
FUNC3(const void *key, Size keysize)
{
	ConnectionHashKey *entry = (ConnectionHashKey *) key;
	uint32 hash = 0;

	hash = FUNC2(entry->hostname, NAMEDATALEN);
	hash = FUNC0(hash, FUNC1(entry->port));
	hash = FUNC0(hash, FUNC2(entry->user, NAMEDATALEN));
	hash = FUNC0(hash, FUNC2(entry->database, NAMEDATALEN));

	return hash;
}