
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_config_t ;
struct TYPE_4__ {int child_count; int cow_map; int * parent_pipe; int * child_pids; int ** child_pipe; } ;


 int ACT_EXIT ;
 int PAGE_SIZE ;
 size_t PIPE_IN ;
 size_t PIPE_OUT ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,int) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int close (int ) ;
 int dt_waitpid (int ,int *,int *,int) ;
 int munmap (int ,int ) ;
 int send_action_to_child_processes (TYPE_1__*,int ) ;

__attribute__((used)) static void
kill_child_processes(proc_config_t proc_config)
{
 int ret = 0;
 T_LOG("Killing child processes");
 send_action_to_child_processes(proc_config, ACT_EXIT);
 for (int child_id = 0; child_id < proc_config->child_count; child_id++) {
  close(proc_config->child_pipe[child_id][PIPE_OUT]);
  dt_waitpid(proc_config->child_pids[child_id], ((void*)0), ((void*)0), 5);
  T_QUIET;
  T_ASSERT_POSIX_SUCCESS(ret, "killed child %d", child_id);
 }
 close(proc_config->parent_pipe[PIPE_IN]);
 munmap(proc_config->cow_map, PAGE_SIZE);
 T_LOG("Killed child processes");
}
