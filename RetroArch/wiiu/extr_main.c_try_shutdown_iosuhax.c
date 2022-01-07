
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOSUHAX_Close () ;
 int MCPHookClose () ;
 int iosuhaxMount ;
 scalar_t__ mcp_hook_fd ;

__attribute__((used)) static void try_shutdown_iosuhax(void)
{
   iosuhaxMount = 0;
}
