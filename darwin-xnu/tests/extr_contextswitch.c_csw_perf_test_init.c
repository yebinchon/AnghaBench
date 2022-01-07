
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int environ ;
 int posix_spawn (int*,char* const,int *,int *,char* const*,int ) ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static void
csw_perf_test_init(void)
{
    int spawn_ret, pid;
    char *const clpcctrl_args[] = {"/usr/local/bin/clpcctrl", "-f", "5000", ((void*)0)};
    spawn_ret = posix_spawn(&pid, clpcctrl_args[0], ((void*)0), ((void*)0), clpcctrl_args, environ);
    waitpid(pid, &spawn_ret, 0);
}
