
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_mutexattr_t ;
typedef int pthread_mutex_t ;


 int EDEADLK ;
 int EPERM ;
 int PTHREAD_MUTEX_ERRORCHECK ;
 int TEST_ASSERT_EQUAL_INT (int,int) ;
 scalar_t__ TEST_PROTECT () ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_gettype (int *,int*) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int) ;
 int unlock_mutex ;

__attribute__((used)) static void test_mutex_lock_unlock(int mutex_type)
{
    int res = 0;
    int set_type = -1;
    volatile bool attr_created = 0;
    volatile bool mutex_created = 0;
    volatile intptr_t thread_rval = 0;
    pthread_mutex_t mutex;
    pthread_mutexattr_t attr;
    pthread_t new_thread;

    if (TEST_PROTECT()) {
        res = pthread_mutexattr_init(&attr);
        TEST_ASSERT_EQUAL_INT(0, res);
        attr_created = 1;

        res = pthread_mutexattr_settype(&attr, mutex_type);
        TEST_ASSERT_EQUAL_INT(0, res);

        res = pthread_mutexattr_gettype(&attr, &set_type);
        TEST_ASSERT_EQUAL_INT(0, res);
        TEST_ASSERT_EQUAL_INT(mutex_type, set_type);

        res = pthread_mutex_init(&mutex, &attr);
        TEST_ASSERT_EQUAL_INT(0, res);
        mutex_created = 1;

        res = pthread_mutex_lock(&mutex);
        TEST_ASSERT_EQUAL_INT(0, res);

        res = pthread_mutex_lock(&mutex);

        if(mutex_type == PTHREAD_MUTEX_ERRORCHECK) {
            TEST_ASSERT_EQUAL_INT(EDEADLK, res);
        } else {
            TEST_ASSERT_EQUAL_INT(0, res);

            res = pthread_mutex_unlock(&mutex);
            TEST_ASSERT_EQUAL_INT(0, res);
        }

        pthread_create(&new_thread, ((void*)0), unlock_mutex, &mutex);

        pthread_join(new_thread, (void **) &thread_rval);
        TEST_ASSERT_EQUAL_INT(EPERM, (int) thread_rval);

        res = pthread_mutex_unlock(&mutex);
        TEST_ASSERT_EQUAL_INT(0, res);
    }

    if (attr_created) {
        pthread_mutexattr_destroy(&attr);
    }

    if (mutex_created) {
        pthread_mutex_destroy(&mutex);
    }
}
