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
struct TYPE_4__ {void* value; void* key; } ;
typedef  TYPE_1__ entry_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 void* FUNC1 (char const*) ; 

__attribute__((used)) static entry_t *FUNC2(const char *key, const char *value)
{
    entry_t *entry = FUNC0(sizeof(entry_t));
    if (!entry) {
        return NULL;
    }

    entry->key = FUNC1(key);
    entry->value = FUNC1(value);
    return entry;
}