#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  used; TYPE_2__** table; } ;
typedef  TYPE_1__ dictht ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
typedef  TYPE_2__ dictEntry ;
struct TYPE_14__ {TYPE_1__* ht; } ;
typedef  TYPE_3__ dict ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,void*) ; 
 TYPE_2__* FUNC4 (int) ; 

dictEntry *FUNC5(dict *d, void *key)
{
    int index;
    dictEntry *entry;
    dictht *ht;

    if (FUNC2(d)) FUNC1(d);

    /* Get the index of the new element, or -1 if
     * the element already exists. */
    if ((index = FUNC0(d, key)) == -1)
        return NULL;

    /* Allocate the memory and store the new entry */
    ht = FUNC2(d) ? &d->ht[1] : &d->ht[0];
    entry = FUNC4(sizeof(*entry));
    entry->next = ht->table[index];
    ht->table[index] = entry;
    ht->used++;

    /* Set the hash entry fields. */
    FUNC3(d, entry, key);
    return entry;
}