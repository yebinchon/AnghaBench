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
typedef  size_t uint8_t ;
struct table_value {int /*<<< orphan*/  locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 struct table_value* table ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

void FUNC2(uint8_t id)
{
    struct table_value *val = &table[id];

#ifdef DEBUG
    if (!val->locked)
    {
        printf("[table] Tried to double-unlock value %d\n", id);
        return;
    }
#endif

    FUNC1(id);
}