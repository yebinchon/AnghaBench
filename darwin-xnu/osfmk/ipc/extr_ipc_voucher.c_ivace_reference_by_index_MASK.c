#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ivac_entry_t ;
typedef  size_t iv_index_t ;
typedef  TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_8__ {size_t ivac_table_size; TYPE_1__* ivac_table; } ;
struct TYPE_7__ {int ivace_value; scalar_t__ ivace_refs; int /*<<< orphan*/  ivace_persist; int /*<<< orphan*/  ivace_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* IVAC_NULL ; 
 size_t IV_UNUSED_VALINDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**) ; 

__attribute__((used)) static void
FUNC4(
	iv_index_t 	key_index,
	iv_index_t	val_index)
{
	ipc_voucher_attr_control_t ivac;
	ivac_entry_t ivace;

	if (IV_UNUSED_VALINDEX == val_index)
		return;

	FUNC3(key_index, FALSE, NULL, &ivac);
	FUNC0(IVAC_NULL != ivac);

	FUNC1(ivac);
	FUNC0(val_index < ivac->ivac_table_size);
	ivace = &ivac->ivac_table[val_index];

	FUNC0(0xdeadc0dedeadc0de != ivace->ivace_value);
	FUNC0(0 < ivace->ivace_refs);
	FUNC0(!ivace->ivace_free);

	/* Take ref only on non-persistent values */
	if (!ivace->ivace_persist) {
		ivace->ivace_refs++;
	}
	FUNC2(ivac);
}