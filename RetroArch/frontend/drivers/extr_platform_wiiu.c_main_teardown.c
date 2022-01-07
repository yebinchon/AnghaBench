
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ProcUIShutdown () ;
 int deinit_logging () ;
 int deinit_network () ;
 int deinit_pad_libraries () ;

__attribute__((used)) static void main_teardown(void)
{
   deinit_pad_libraries();
   ProcUIShutdown();
   deinit_logging();
   deinit_network();
}
