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
struct TYPE_4__ {int /*<<< orphan*/  entries; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ section_t ;

/* Variables and functions */
 int /*<<< orphan*/  entry_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static section_t *FUNC3(const char *name)
{
    section_t *section = FUNC1(sizeof(section_t));
    if (!section) {
        return NULL;
    }

    section->name = FUNC2(name);
    section->entries = FUNC0(entry_free);
    return section;
}