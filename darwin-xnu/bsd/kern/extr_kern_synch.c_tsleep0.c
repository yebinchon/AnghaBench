
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int lck_mtx_t ;
typedef int caddr_t ;


 int NSEC_PER_SEC ;
 int _sleep (int ,int,char const*,int ,int (*) (int),int *) ;
 int clock_interval_to_deadline (int,int,int *) ;
 int hz ;

int
tsleep0(
 void *chan,
 int pri,
 const char *wmsg,
 int timo,
 int (*continuation)(int))
{
 u_int64_t abstime = 0;

 if (timo)
  clock_interval_to_deadline(timo, NSEC_PER_SEC / hz, &abstime);
 return _sleep((caddr_t)chan, pri, wmsg, abstime, continuation, (lck_mtx_t *)0);
}
