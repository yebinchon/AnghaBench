
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* proc_config_t ;
typedef int pid_t ;
typedef int (* child_action_handler_t ) (TYPE_1__*,int) ;
struct TYPE_6__ {int child_count; int * parent_pipe; int ** child_pipe; int * child_pids; scalar_t__ cow_map; int proc_grp_id; } ;


 int MAP_ANON ;
 int MAP_FAILED ;
 int MAP_PRIVATE ;
 int PAGE_SIZE ;
 size_t PIPE_IN ;
 size_t PIPE_OUT ;
 int PROT_WRITE ;
 int T_ASSERT_NE_PTR (scalar_t__,int ,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*,...) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int WAIT_FOR_CHILDREN (int ,int,int) ;
 int close (int ) ;
 int fork () ;
 int getpgid (int ) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ mmap (int ,int ,int ,int,int,int ) ;
 int pipe (int *) ;
 int setpgid (int ,int ) ;

__attribute__((used)) static proc_config_t
spawn_child_processes(int child_count, child_action_handler_t child_handler)
{



 T_LOG("Spawning child processes...");
 proc_config_t proc_config = malloc(sizeof(*proc_config));
 int action = 0;
 int err;

 setpgid(0, 0);
 proc_config->proc_grp_id = getpgid(0);

 proc_config->child_count = child_count;

 err = pipe(proc_config->parent_pipe);
 T_QUIET;
 T_ASSERT_POSIX_SUCCESS(err, "pipe() call");




 proc_config->cow_map = mmap(0, PAGE_SIZE, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
 T_QUIET;
 T_ASSERT_NE_PTR(proc_config->cow_map, MAP_FAILED, "cow_map mmap()");
 *((int *)(proc_config->cow_map)) = 10;

 pid_t child_pid;
 int i;
 int child_id;
 for (i = 0; i < child_count; i++) {
  err = pipe(proc_config->child_pipe[i]);
  T_QUIET;
  T_ASSERT_POSIX_SUCCESS(err, "pipe() call");

  child_pid = fork();
  child_id = i;
  T_QUIET;
  T_ASSERT_POSIX_SUCCESS(child_pid, "fork() in parent process for child %d", child_id);

  if (child_pid == 0) {
   child_handler(proc_config, child_id);
  } else {
   proc_config->child_pids[child_id] = child_pid;
  }
  close(proc_config->child_pipe[child_id][PIPE_IN]);
 }



 close(proc_config->parent_pipe[PIPE_OUT]);
 WAIT_FOR_CHILDREN(proc_config->parent_pipe[PIPE_IN], action, child_count);

 return proc_config;
}
