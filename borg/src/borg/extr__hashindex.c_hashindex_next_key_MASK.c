#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char const* buckets; int bucket_size; int num_buckets; } ;
typedef  TYPE_1__ HashIndex ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static unsigned char *
FUNC3(HashIndex *index, const unsigned char *key)
{
    int idx = 0;
    if(key) {
        idx = 1 + (key - index->buckets) / index->bucket_size;
    }
    if (idx == index->num_buckets) {
        return NULL;
    }
    while(FUNC2(index, idx) || FUNC1(index, idx)) {
        idx ++;
        if (idx == index->num_buckets) {
            return NULL;
        }
    }
    return FUNC0(index, idx);
}