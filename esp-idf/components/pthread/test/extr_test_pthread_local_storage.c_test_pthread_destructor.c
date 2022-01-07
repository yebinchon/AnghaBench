
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* actual_destructor_ptr ;
 int printf (char*) ;

__attribute__((used)) static void test_pthread_destructor(void *value)
{
    printf("Destructor called...\n");
    actual_destructor_ptr = value;
}
