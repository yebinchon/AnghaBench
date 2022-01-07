
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
typedef int helper_func ;
struct TYPE_2__ {int helper_func; } ;


 int MAX_CHILD_PROCS ;
 int T_ASSERT_LT (int ,int ,char*,int ) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_LOG (char*,int,int ) ;
 int T_QUIET ;
 int* child_pids ;
 TYPE_1__ current_test ;
 int dt_launch_tool (int*,char**,int,int *,int *) ;
 int errno ;
 int num_children ;
 int strlcpy (char*,int ,int) ;
 char* testpath ;

__attribute__((used)) static void spawn_child_process(void)
{
 pid_t pid = -1;
 char helper_func[50];
 char *launch_tool_args[4];

 T_QUIET; T_ASSERT_LT(num_children, MAX_CHILD_PROCS, "Spawned %d children. Timing out...", MAX_CHILD_PROCS);

 strlcpy(helper_func, current_test.helper_func, sizeof(helper_func));
 launch_tool_args[0] = testpath;
 launch_tool_args[1] = "-n";
 launch_tool_args[2] = helper_func;
 launch_tool_args[3] = ((void*)0);


 int rc = dt_launch_tool(&pid, launch_tool_args, 0, ((void*)0), ((void*)0));
 if (rc != 0) {
  T_LOG("dt_launch tool returned %d with error code %d", rc, errno);
 }
 T_QUIET; T_ASSERT_POSIX_SUCCESS(pid, "dt_launch_tool");

 child_pids[num_children++] = pid;
}
