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
struct kcdata_item {scalar_t__ size; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* kcdata_descriptor_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_4__ {int /*<<< orphan*/  kcd_addr_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  KCDATA_TYPE_BUFFER_END ; 
 int /*<<< orphan*/  FUNC0 (struct kcdata_item*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct kcdata_item*,int) ; 

kern_return_t
FUNC2(kcdata_descriptor_t data)
{
	struct kcdata_item info;
	FUNC0(&info, sizeof(info));
	info.type = KCDATA_TYPE_BUFFER_END;
	info.size = 0;
	return FUNC1(data, data->kcd_addr_end, &info, sizeof(info));
}