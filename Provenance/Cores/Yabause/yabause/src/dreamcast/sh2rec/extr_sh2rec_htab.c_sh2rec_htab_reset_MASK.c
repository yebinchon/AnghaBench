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
typedef  int /*<<< orphan*/  htab_entry_t ;

/* Variables and functions */
 int SH2REC_HTAB_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__* table ; 

void FUNC2(void) {
    int i;

    for(i = 0; i < SH2REC_HTAB_ENTRIES; ++i) {
        if(table[i]) {
            FUNC0(table[i]);
        }
    }

    FUNC1(table, 0, sizeof(htab_entry_t *) * SH2REC_HTAB_ENTRIES);
}