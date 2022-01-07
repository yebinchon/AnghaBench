
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Handle ;


 int U64_MAX ;
 int svcExitThread () ;
 int svcWaitSynchronization (int ,int ) ;

__attribute__((used)) static void dummy_thread_entry(Handle lock)
{
   svcWaitSynchronization(lock, U64_MAX);
   svcExitThread();
}
