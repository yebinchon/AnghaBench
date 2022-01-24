#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cid; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* ff_dnxhd_cid_table ; 

int FUNC1(int cid)
{
    int i;
    for (i = 0; i < FUNC0(ff_dnxhd_cid_table); i++)
        if (ff_dnxhd_cid_table[i].cid == cid)
            return i;
    return -1;
}