#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  values_list_t ;
struct TYPE_7__ {void* value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ value_entry_t ;
typedef  int /*<<< orphan*/  pthread_key_t ;
typedef  int /*<<< orphan*/  key_entry_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PTHREAD_TLS_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pthread_local_storage_thread_deleted_callback ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  value_entry_t_ ; 

int FUNC10(pthread_key_t key, const void *value)
{
    key_entry_t *key_entry = FUNC3(key);
    if (key_entry == NULL) {
        return ENOENT; // this situation is undefined by pthreads standard
    }

    values_list_t *tls = FUNC7(NULL, PTHREAD_TLS_INDEX);
    if (tls == NULL) {
        tls = FUNC2(1, sizeof(values_list_t));
        if (tls == NULL) {
            return ENOMEM;
        }
#if defined(CONFIG_FREERTOS_ENABLE_STATIC_TASK_CLEAN_UP)
        vTaskSetThreadLocalStoragePointer(NULL, PTHREAD_TLS_INDEX, tls);
#else
        FUNC9(NULL,
                                                        PTHREAD_TLS_INDEX,
                                                        tls,
                                                        pthread_local_storage_thread_deleted_callback);
#endif
    }

    value_entry_t *entry = FUNC4(tls, key);
    if (entry != NULL) {
        if (value != NULL) {
            // cast on next line is necessary as pthreads API uses
            // 'const void *' here but elsewhere uses 'void *'
            entry->value = (void *) value;
        } else { // value == NULL, remove the entry
            FUNC1(tls, entry, value_entry_t_, next);
            FUNC5(entry);
        }
    } else if (value != NULL) {
        entry = FUNC6(sizeof(value_entry_t));
        if (entry == NULL) {
            return ENOMEM;
        }
        entry->key = key;
        entry->value = (void *) value; // see note above about cast
        FUNC0(tls, entry, next);
    }

    return 0;
}