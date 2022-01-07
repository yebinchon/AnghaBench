
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_helper_t ;


 int HELPER_TIMEOUT_SECS ;
 int LAUNCH_SYSTEM_DOMAIN ;
 int dt_fork_helper (char const*) ;
 int dt_launchd_helper_domain (char*,char const*,int *,int ) ;
 int dt_run_helpers (int *,int,int ) ;

__attribute__((used)) static void
run_client_server(const char *server_name, const char *client_name)
{
 dt_helper_t helpers[] = {
  dt_launchd_helper_domain("com.apple.xnu.test.turnstile_multihop.plist",
    server_name, ((void*)0), LAUNCH_SYSTEM_DOMAIN),
  dt_fork_helper(client_name)
 };
 dt_run_helpers(helpers, 2, HELPER_TIMEOUT_SECS);
}
