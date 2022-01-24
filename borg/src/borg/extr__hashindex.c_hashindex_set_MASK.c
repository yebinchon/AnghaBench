#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {scalar_t__ num_entries; scalar_t__ upper_limit; int num_buckets; scalar_t__ num_empty; scalar_t__ min_empty; int key_size; int value_size; } ;
typedef  TYPE_1__ HashIndex ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,unsigned char const*) ; 
 int FUNC5 (TYPE_1__*,unsigned char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static int
FUNC8(HashIndex *index, const unsigned char *key, const unsigned char *value)
{
    int start_idx;
    int idx = FUNC5(index, key, &start_idx);
    uint8_t *ptr;
    if(idx < 0)
    {
        if(index->num_entries > index->upper_limit) {
            if(!FUNC6(index, FUNC3(index->num_buckets))) {
                return 0;
            }
            start_idx = FUNC4(index, key);
        }
        idx = start_idx;
        while(!FUNC2(index, idx) && !FUNC1(index, idx)) {
            idx++;
            if (idx >= index->num_buckets){
                idx -= index->num_buckets;
            }
        }
        if(FUNC2(index, idx)){
            index->num_empty--;
            if(index->num_empty < index->min_empty) {
                /* too many tombstones here / not enough empty buckets, do a same-size rebuild */
                if(!FUNC6(index, index->num_buckets)) {
                    return 0;
                }
            }
        }
        ptr = FUNC0(index, idx);
        FUNC7(ptr, key, index->key_size);
        FUNC7(ptr + index->key_size, value, index->value_size);
        index->num_entries += 1;
    }
    else
    {
        FUNC7(FUNC0(index, idx) + index->key_size, value, index->value_size);
    }
    return 1;
}