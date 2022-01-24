#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_8__ {int key_size; int value_size; int num_buckets; int num_empty; int bucket_size; TYPE_1__ buckets_buffer; int /*<<< orphan*/  min_empty; int /*<<< orphan*/  upper_limit; int /*<<< orphan*/  lower_limit; scalar_t__ num_entries; int /*<<< orphan*/  buckets; } ;
typedef  TYPE_2__ HashIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_2__* FUNC8 (int) ; 

__attribute__((used)) static HashIndex *
FUNC9(int capacity, int key_size, int value_size)
{
    HashIndex *index;
    int i;
    capacity = FUNC3(capacity);

    if(!(index = FUNC8(sizeof(HashIndex)))) {
        FUNC1("malloc header failed");
        return NULL;
    }
    if(!(index->buckets = FUNC2(capacity, key_size + value_size))) {
        FUNC1("malloc buckets failed");
        FUNC4(index);
        return NULL;
    }
    index->num_entries = 0;
    index->key_size = key_size;
    index->value_size = value_size;
    index->num_buckets = capacity;
    index->num_empty = capacity;
    index->bucket_size = index->key_size + index->value_size;
    index->lower_limit = FUNC5(index->num_buckets);
    index->upper_limit = FUNC7(index->num_buckets);
    index->min_empty = FUNC6(index->num_buckets);
#ifndef BORG_NO_PYTHON
    index->buckets_buffer.buf = NULL;
#endif
    for(i = 0; i < capacity; i++) {
        FUNC0(index, i);
    }
    return index;
}