
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thd_t ;


 int thd_create (int *,int ,int *) ;
 int thd_join (int ,int *) ;
 int thd_start ;

__attribute__((used)) static void
no_lazy_lock(void)
{
 thd_t thd;

 thd_create(&thd, thd_start, ((void*)0));
 thd_join(thd, ((void*)0));
}
