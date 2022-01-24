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
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 long long DICT_HT_INITIAL_SIZE ; 
 long long HASHTABLE_MIN_FILL ; 
 long long FUNC0 (int /*<<< orphan*/ *) ; 
 long long FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(dict *dict) {
    long long size, used;

    size = FUNC1(dict);
    used = FUNC0(dict);
    return (size && used && size > DICT_HT_INITIAL_SIZE &&
            (used*100/size < HASHTABLE_MIN_FILL));
}