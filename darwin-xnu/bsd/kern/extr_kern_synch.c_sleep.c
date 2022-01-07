
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int caddr_t ;


 int _sleep (int ,int,char*,int ,int (*) (int),int *) ;

int
sleep(
 void *chan,
 int pri)
{
 return _sleep((caddr_t)chan, pri, (char *)((void*)0), 0, (int (*)(int))0, (lck_mtx_t *)0);
}
