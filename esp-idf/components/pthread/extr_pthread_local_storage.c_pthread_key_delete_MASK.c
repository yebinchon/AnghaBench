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
typedef  int /*<<< orphan*/  pthread_key_t ;
typedef  int /*<<< orphan*/  key_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_entry_t_ ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_keys ; 
 int /*<<< orphan*/  s_keys_lock ; 

int FUNC5(pthread_key_t key)
{

    FUNC3(&s_keys_lock);

    /* Ideally, we would also walk all tasks' thread local storage value_list here
       and delete any values associated with this key. We do not do this...
    */

    key_entry_t *entry = FUNC1(key);
    if (entry != NULL) {
        FUNC0(&s_keys, entry, key_entry_t_, next);
        FUNC2(entry);
    }

    FUNC4(&s_keys_lock);

    return 0;
}