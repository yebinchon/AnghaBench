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
struct TYPE_9__ {int num_buckets; int /*<<< orphan*/  bucket_size; } ;
typedef  TYPE_1__ HashIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,unsigned char const*) ; 
 int FUNC5 (TYPE_1__*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(HashIndex *index, const unsigned char *key, int *start_idx)
{
    int didx = -1;
    int start = FUNC5(index, key);
    int idx = start;
    for(;;) {
        if(FUNC2(index, idx))
        {
            break;
        }
        if(FUNC1(index, idx)) {
            if(didx == -1) {
                didx = idx;
            }
        }
        else if(FUNC4(index, idx, key)) {
            if (didx != -1) {
                // note: although lookup is logically a read-only operation,
                // we optimize (change) the hashindex here "on the fly".
                FUNC6(FUNC0(index, didx), FUNC0(index, idx), index->bucket_size);
                FUNC3(index, idx);
                idx = didx;
            }
            return idx;
        }
        idx++;
        if (idx >= index->num_buckets) {
            idx -= index->num_buckets;
        }
        if(idx == start) {
            break;
        }
    }
    if (start_idx != NULL) {
        (*start_idx) = (didx == -1) ? idx : didx;
    }
    return -1;
}