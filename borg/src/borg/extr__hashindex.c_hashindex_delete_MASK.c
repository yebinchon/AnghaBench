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
struct TYPE_6__ {scalar_t__ num_entries; scalar_t__ lower_limit; int /*<<< orphan*/  num_buckets; } ;
typedef  TYPE_1__ HashIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(HashIndex *index, const unsigned char *key)
{
    int idx = FUNC1(index, key, NULL);
    if (idx < 0) {
        return -1;
    }
    FUNC0(index, idx);
    index->num_entries -= 1;
    if(index->num_entries < index->lower_limit) {
        if(!FUNC2(index, FUNC3(index->num_buckets))) {
            return 0;
        }
    }
    return 1;
}