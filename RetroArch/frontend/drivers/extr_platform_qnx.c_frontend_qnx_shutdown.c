
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bps_shutdown () ;

__attribute__((used)) static void frontend_qnx_shutdown(bool unused)
{
   (void)unused;
   bps_shutdown();
}
