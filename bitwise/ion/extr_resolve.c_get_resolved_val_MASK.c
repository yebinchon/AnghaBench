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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  Val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  resolved_val_map ; 

Val FUNC3(void *ptr) {
    uint64_t u64 = FUNC1(&resolved_val_map, ptr);
    Val val;
    FUNC0(sizeof(val) == sizeof(u64));
    FUNC2(&val, &u64, sizeof(u64));
    return val;
}