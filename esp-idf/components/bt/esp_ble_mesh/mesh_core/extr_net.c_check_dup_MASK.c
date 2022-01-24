#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u32_t ;
struct net_buf_simple {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* dup_cache ; 
 int dup_cache_next ; 
 int /*<<< orphan*/ * FUNC1 (struct net_buf_simple*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool FUNC3(struct net_buf_simple *data)
{
    const u8_t *tail = FUNC1(data);
    u32_t val;
    int i;

    val = FUNC2(tail - 4) ^ FUNC2(tail - 8);

    for (i = 0; i < FUNC0(dup_cache); i++) {
        if (dup_cache[i] == val) {
            return true;
        }
    }

    dup_cache[dup_cache_next++] = val;
    dup_cache_next %= FUNC0(dup_cache);

    return false;
}