
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_EVENTID ;
 int kdebug_trace (int ,int ,int ,int ,int ) ;
 int sleep (int) ;

__attribute__((used)) static void*
newthread(void *arg)
{
#pragma unused(arg)
 while (1) {
  kdebug_trace(TEST_EVENTID, 0, 0, 0, 0);
  sleep(1);
 }
}
