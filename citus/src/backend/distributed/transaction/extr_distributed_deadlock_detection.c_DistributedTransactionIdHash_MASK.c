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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_2__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  transactionNumber; int /*<<< orphan*/  initiatorNodeIdentifier; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ DistributedTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32
FUNC3(const void *key, Size keysize)
{
	DistributedTransactionId *entry = (DistributedTransactionId *) key;
	uint32 hash = 0;

	hash = FUNC2(entry->initiatorNodeIdentifier);
	hash = FUNC1(hash, FUNC0((unsigned char *) &entry->transactionNumber,
									   sizeof(int64)));
	hash = FUNC1(hash, FUNC0((unsigned char *) &entry->timestamp,
									   sizeof(TimestampTz)));

	return hash;
}