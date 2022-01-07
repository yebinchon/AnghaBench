
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int T_EXPECT_EQ (int,int ,char*,char* const) ;
 int T_EXPECT_TRUE (int,char*,char* const) ;
 int T_LOG (char*,char* const,int) ;
 int dt_launch_tool (int *,char* const*,int,int *,int *) ;
 int dt_waitpid (int ,int*,int*,int) ;

int
spawn_proc(char * const command[]) {
 pid_t pid = 0;
 int launch_tool_ret = 0;
 bool waitpid_ret = 1;
 int status = 0;
 int signal = 0;
 int timeout = 30;

 launch_tool_ret = dt_launch_tool(&pid, command, 0, ((void*)0), ((void*)0));
 T_EXPECT_EQ(launch_tool_ret, 0, "launch tool: %s", command[0]);
 if(launch_tool_ret != 0) {
  return 1;
 }

 waitpid_ret = dt_waitpid(pid, &status, &signal, timeout);
 T_EXPECT_TRUE(waitpid_ret, "%s should succeed", command[0]);
 if(waitpid_ret == 0) {
  if(status != 0) {
   T_LOG("%s exited %d", command[0], status);
  }
  if(signal != 0) {
   T_LOG("%s received signal %d", command[0], signal);
  }
  return 1;
 }

 return 0;
}
