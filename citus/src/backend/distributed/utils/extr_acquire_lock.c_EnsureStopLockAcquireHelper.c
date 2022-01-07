
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BackgroundWorkerHandle ;


 int TerminateBackgroundWorker (int *) ;

__attribute__((used)) static void
EnsureStopLockAcquireHelper(void *arg)
{
 BackgroundWorkerHandle *handle = (BackgroundWorkerHandle *) arg;
 TerminateBackgroundWorker(handle);
}
