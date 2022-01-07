
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 char* _PATH_BSHELL ;
 int dt_launch_tool (int*,char**,int,int *,int *) ;
 int dt_waitpid (int,int*,int *,int) ;

__attribute__((used)) static int system_legal(const char *command) {
 pid_t pid = -1;
 int exit_status = 0;
 const char *argv[] = {
  _PATH_BSHELL,
  "-c",
  command,
  ((void*)0)
 };

 int rc = dt_launch_tool(&pid, (char **)(void *)argv, 0, ((void*)0), ((void*)0));
 if (rc != 0) {
  return -1;
 }
 if (!dt_waitpid(pid, &exit_status, ((void*)0), 30)) {
  if (exit_status != 0) {
   return exit_status;
  }
  return -1;
 }

 return exit_status;
}
