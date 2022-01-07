
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ getThreadLocalStorage () ;
 int svcExitThread () ;

__attribute__((used)) static void check_tls_thread_entry(bool* keep)
{
   *keep = !((u32)getThreadLocalStorage() & 0xFFF);
   svcExitThread();
}
