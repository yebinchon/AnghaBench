
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int STRESS_DEBUGID ;
 scalar_t__ continue_abuse ;
 int kdebug_trace (int ,unsigned int,scalar_t__,int ,int ) ;

__attribute__((used)) static void *
kdebug_abuser_thread(void *ctx)
{
 unsigned int id = (unsigned int)ctx;
 uint64_t i = 0;
 while (continue_abuse) {
  kdebug_trace(STRESS_DEBUGID, id, i, 0, 0);
  i++;
 }

 return ((void*)0);
}
