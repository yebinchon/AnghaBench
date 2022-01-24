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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {scalar_t__ all_image_info_addr; } ;
typedef  TYPE_1__ task_dyld_info_data_t ;
struct dyld_all_image_infos {scalar_t__ sharedCacheSlide; scalar_t__ dyldImageLoadAddress; } ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TASK_DYLD_INFO ; 
 int /*<<< orphan*/  TASK_DYLD_INFO_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	task_dyld_info_data_t info;
	mach_msg_type_number_t size = TASK_DYLD_INFO_COUNT;
	kern_return_t kret;
	struct dyld_all_image_infos *all_image_infos;
	
	kret = FUNC4(FUNC2(), TASK_DYLD_INFO,
					 (void *)&info, &size);
	if (kret != KERN_SUCCESS)
		FUNC0(1, "task_info: %s", FUNC1(kret));

	all_image_infos = (struct dyld_all_image_infos *)(uintptr_t)info.all_image_info_addr;

	FUNC3("      dyld load address = 0x%016llx\n", (uint64_t)(uintptr_t)all_image_infos->dyldImageLoadAddress);
	FUNC3("     shared cache slide = 0x%016llx\n", (uint64_t)(uintptr_t)all_image_infos->sharedCacheSlide);

}