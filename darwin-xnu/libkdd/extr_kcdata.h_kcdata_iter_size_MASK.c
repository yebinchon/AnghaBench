#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct thread_snapshot_v2 {int dummy; } ;
struct dyld_uuid_info_64 {int dummy; } ;
struct TYPE_7__ {TYPE_1__* item; } ;
typedef  TYPE_2__ kcdata_iter_t ;
struct TYPE_6__ {int size; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
#define  KCDATA_TYPE_ARRAY 131 
#define  KCDATA_TYPE_CONTAINER_BEGIN 130 
#define  STACKSHOT_KCTYPE_SHAREDCACHE_LOADINFO 129 
#define  STACKSHOT_KCTYPE_THREAD_SNAPSHOT 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int) ; 
 int FUNC2 (TYPE_2__) ; 

__attribute__((used)) static inline uint32_t
FUNC3(kcdata_iter_t iter)
{
	uint32_t legacy_size = 0;

	switch (FUNC2(iter)) {
	case KCDATA_TYPE_ARRAY:
	case KCDATA_TYPE_CONTAINER_BEGIN:
		return iter.item->size;
	case STACKSHOT_KCTYPE_THREAD_SNAPSHOT: {
		legacy_size = sizeof(struct thread_snapshot_v2);
		if (FUNC1(iter, legacy_size)) {
			return legacy_size;
		}

		goto not_legacy;
	}
	case STACKSHOT_KCTYPE_SHAREDCACHE_LOADINFO: {
		legacy_size = sizeof(struct dyld_uuid_info_64);
		if (FUNC1(iter, legacy_size)) {
			return legacy_size;
		}

		goto not_legacy;
	}
not_legacy:
	default:
		if (iter.item->size < FUNC0(iter.item->flags))
			return 0;
		else
			return iter.item->size - FUNC0(iter.item->flags);
	}
}