#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int ZeroFree; int /*<<< orphan*/  Size; int /*<<< orphan*/  Magic; } ;
typedef  TYPE_1__ MEMTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMTAG_MAGIC ; 
 void* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void *FUNC4(UINT size, bool zero_clear_when_free)
{
	MEMTAG *tag;
	UINT real_size;

	real_size = FUNC0(size);

	tag = FUNC1(real_size);

	FUNC3(tag, sizeof(MEMTAG));
	tag->Magic = MEMTAG_MAGIC;
	tag->Size = size;
	tag->ZeroFree = zero_clear_when_free;

	return FUNC2(tag);
}