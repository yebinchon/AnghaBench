
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thd_t ;


 scalar_t__ pthread_create (int *,int *,void* (*) (void*),void*) ;
 int test_fail (char*) ;

void
thd_create(thd_t *thd, void *(*proc)(void *), void *arg)
{

 if (pthread_create(thd, ((void*)0), proc, arg) != 0)
  test_fail("Error in pthread_create()\n");
}
