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
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  openssl_init ; 
 int /*<<< orphan*/  openssl_lock ; 
 int /*<<< orphan*/ * openssl_mutexes ; 
 int /*<<< orphan*/  openssl_thread_id ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC11(void)
{
    FUNC8();
    if (!openssl_init) {
        FUNC5();
        FUNC6();
#if HAVE_THREADS
        if (!CRYPTO_get_locking_callback()) {
            int i;
            openssl_mutexes = av_malloc_array(sizeof(pthread_mutex_t), CRYPTO_num_locks());
            if (!openssl_mutexes) {
                ff_unlock_avformat();
                return AVERROR(ENOMEM);
            }

            for (i = 0; i < CRYPTO_num_locks(); i++)
                pthread_mutex_init(&openssl_mutexes[i], NULL);
            CRYPTO_set_locking_callback(openssl_lock);
#if !defined(WIN32) && OPENSSL_VERSION_NUMBER < 0x10000000
            CRYPTO_set_id_callback(openssl_thread_id);
#endif
        }
#endif
    }
    openssl_init++;
    FUNC9();

    return 0;
}