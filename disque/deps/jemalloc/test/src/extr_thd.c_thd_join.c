
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thd_t ;


 int pthread_join (int ,void**) ;

void
thd_join(thd_t thd, void **ret)
{

 pthread_join(thd, ret);
}
