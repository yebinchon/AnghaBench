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
struct TYPE_4__ {int size; int used; } ;
typedef  TYPE_1__ dict ;

/* Variables and functions */
 int DICT_HT_INITIAL_SIZE ; 
 int DICT_OK ; 
 int FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC1(dict *ht) {
    /* If the hash table is empty expand it to the intial size,
     * if the table is "full" dobule its size. */
    if (ht->size == 0)
        return FUNC0(ht, DICT_HT_INITIAL_SIZE);
    if (ht->used == ht->size)
        return FUNC0(ht, ht->size*2);
    return DICT_OK;
}