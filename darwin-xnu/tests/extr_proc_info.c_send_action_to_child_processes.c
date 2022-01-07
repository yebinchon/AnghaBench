
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_config_t ;
typedef int action ;
struct TYPE_3__ {int child_count; int * parent_pipe; int ** child_pipe; } ;


 int ACT_EXIT ;
 size_t PIPE_IN ;
 size_t PIPE_OUT ;
 int T_ASSERT_POSIX_SUCCESS (long,char*) ;
 int T_QUIET ;
 int WAIT_FOR_CHILDREN (int ,int,int) ;
 long write (int ,int*,int) ;

__attribute__((used)) static void
send_action_to_child_processes(proc_config_t proc_config, int action)
{
 long err;
 for (int i = 0; i < proc_config->child_count; i++) {
  err = write(proc_config->child_pipe[i][PIPE_OUT], &action, sizeof(action));
  T_QUIET;
  T_ASSERT_POSIX_SUCCESS(err, "write() to child in send_action");
 }
 if (action != ACT_EXIT) {
  WAIT_FOR_CHILDREN(proc_config->parent_pipe[PIPE_IN], action, proc_config->child_count);
 }
}
