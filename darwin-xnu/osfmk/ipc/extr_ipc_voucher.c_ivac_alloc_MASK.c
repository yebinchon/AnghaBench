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
typedef  size_t natural_t ;
typedef  TYPE_1__* ivac_entry_t ;
typedef  int /*<<< orphan*/  ivac_entry ;
typedef  int /*<<< orphan*/  iv_index_t ;
typedef  TYPE_2__* ipc_voucher_attr_control_t ;
struct TYPE_8__ {int ivac_table_size; int ivac_init_table_size; int ivac_freelist; int /*<<< orphan*/  ivac_key_index; TYPE_1__* ivac_table; int /*<<< orphan*/  ivac_port; void* ivac_is_growing; int /*<<< orphan*/  ivac_refs; } ;
struct TYPE_7__ {int /*<<< orphan*/  ivace_next; void* ivace_free; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  IP_NULL ; 
 int IVAC_ENTRIES_MIN ; 
 TYPE_2__* IVAC_NULL ; 
 int /*<<< orphan*/  IV_FREELIST_END ; 
 int /*<<< orphan*/  IV_HASH_END ; 
 int /*<<< orphan*/  ipc_voucher_attr_control_zone ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ivac_refgrp ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

ipc_voucher_attr_control_t
FUNC5(iv_index_t key_index)
{
	ipc_voucher_attr_control_t ivac;
	ivac_entry_t table;
	natural_t i;


	ivac = (ipc_voucher_attr_control_t)FUNC4(ipc_voucher_attr_control_zone);
	if (IVAC_NULL == ivac)
		return IVAC_NULL;
		
	FUNC3(&ivac->ivac_refs, &ivac_refgrp);
	ivac->ivac_is_growing = FALSE;
	ivac->ivac_port = IP_NULL;

	/* start with just the inline table */
	table =	(ivac_entry_t) FUNC2(IVAC_ENTRIES_MIN * sizeof(ivac_entry));
	ivac->ivac_table = table;
	ivac->ivac_table_size = IVAC_ENTRIES_MIN;
	ivac->ivac_init_table_size = IVAC_ENTRIES_MIN;
	for (i = 0; i < ivac->ivac_table_size; i++) {
		FUNC1(&table[i], i+1);
	}

	/* the default table entry is never on freelist */
	table[0].ivace_next = IV_HASH_END;
	table[0].ivace_free = FALSE;
	table[i-1].ivace_next = IV_FREELIST_END;
	ivac->ivac_freelist = 1;
	FUNC0(ivac);
	ivac->ivac_key_index = key_index;
	return (ivac);
}