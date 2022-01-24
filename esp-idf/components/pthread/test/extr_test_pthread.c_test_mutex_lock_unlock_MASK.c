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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int EDEADLK ; 
 int EPERM ; 
 int PTHREAD_MUTEX_ERRORCHECK ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  unlock_mutex ; 

__attribute__((used)) static void FUNC12(int mutex_type)
{
    int res = 0;
    int set_type = -1;
    volatile bool attr_created = false;
    volatile bool mutex_created = false;
    volatile intptr_t thread_rval = 0;
    pthread_mutex_t mutex;
    pthread_mutexattr_t attr;
    pthread_t new_thread;

    if (FUNC1()) {
        res = FUNC10(&attr);
        FUNC0(0, res);
        attr_created = true;

        res = FUNC11(&attr, mutex_type);
        FUNC0(0, res);

        res = FUNC9(&attr, &set_type);
        FUNC0(0, res);
        FUNC0(mutex_type, set_type);

        res = FUNC5(&mutex, &attr);
        FUNC0(0, res);
        mutex_created = true;

        res = FUNC6(&mutex);
        FUNC0(0, res);

        res = FUNC6(&mutex);

        if(mutex_type == PTHREAD_MUTEX_ERRORCHECK) {
            FUNC0(EDEADLK, res);
        } else {
            FUNC0(0, res);

            res = FUNC7(&mutex);
            FUNC0(0, res);
        }

        FUNC2(&new_thread, NULL, unlock_mutex, &mutex);

        FUNC3(new_thread, (void **) &thread_rval);
        FUNC0(EPERM, (int) thread_rval);

        res = FUNC7(&mutex);
        FUNC0(0, res);
    }

    if (attr_created) {
        FUNC8(&attr);
    }

    if (mutex_created) {
        FUNC4(&mutex);
    }
}