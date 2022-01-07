
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int lck_mtx_t ;
typedef int caddr_t ;


 int _sleep (int ,int,char const*,int ,int (*) (int),int *) ;

int
msleep1(
 void *chan,
 lck_mtx_t *mtx,
 int pri,
 const char *wmsg,
 u_int64_t abstime)
{
 return _sleep((caddr_t)chan, pri, wmsg, abstime, (int (*)(int))0, mtx);
}
