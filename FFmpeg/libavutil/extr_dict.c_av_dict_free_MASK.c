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
struct TYPE_4__ {size_t count; struct TYPE_4__* elems; struct TYPE_4__* value; struct TYPE_4__* key; } ;
typedef  TYPE_1__ AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 

void FUNC1(AVDictionary **pm)
{
    AVDictionary *m = *pm;

    if (m) {
        while (m->count--) {
            FUNC0(&m->elems[m->count].key);
            FUNC0(&m->elems[m->count].value);
        }
        FUNC0(&m->elems);
    }
    FUNC0(pm);
}