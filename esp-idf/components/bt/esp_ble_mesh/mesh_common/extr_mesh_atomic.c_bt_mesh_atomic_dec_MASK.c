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
typedef  int /*<<< orphan*/  bt_mesh_atomic_val_t ;
typedef  int /*<<< orphan*/  bt_mesh_atomic_t ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

bt_mesh_atomic_val_t FUNC2(bt_mesh_atomic_t *target)
{
    unsigned int key;
    bt_mesh_atomic_val_t ret;

    key = FUNC0();

    ret = *target;
    (*target)--;

    FUNC1(key);

    return ret;
}