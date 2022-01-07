
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetThreadWork () ;
 int workfunction (int) ;

void ThreadWorkerFunction (int threadnum)
{
 int work;

 while (1)
 {
  work = GetThreadWork ();
  if (work == -1)
   break;

  workfunction(work);
 }
}
