
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_key_t ;


 int * expected_destructor_ptr ;
 int printf (char*) ;
 int pthread_setspecific (int ,int *) ;

__attribute__((used)) static void *thread_test_pthread_destructor(void *v_key)
{
    printf("Local storage thread running...\n");
    pthread_key_t key = (pthread_key_t) v_key;
    expected_destructor_ptr = &key;
    pthread_setspecific(key, expected_destructor_ptr);
    printf("Local storage thread done.\n");
    return ((void*)0);
}
