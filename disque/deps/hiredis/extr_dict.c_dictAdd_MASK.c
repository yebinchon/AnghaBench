#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_1__ dictEntry ;
struct TYPE_11__ {int /*<<< orphan*/  used; TYPE_1__** table; } ;
typedef  TYPE_2__ dict ;

/* Variables and functions */
 int DICT_ERR ; 
 int DICT_OK ; 
 int FUNC0 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,void*) ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(dict *ht, void *key, void *val) {
    int index;
    dictEntry *entry;

    /* Get the index of the new element, or -1 if
     * the element already exists. */
    if ((index = FUNC0(ht, key)) == -1)
        return DICT_ERR;

    /* Allocates the memory and stores key */
    entry = FUNC3(sizeof(*entry));
    entry->next = ht->table[index];
    ht->table[index] = entry;

    /* Set the hash entry fields. */
    FUNC1(ht, entry, key);
    FUNC2(ht, entry, val);
    ht->used++;
    return DICT_OK;
}