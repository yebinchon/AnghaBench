
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct socket {scalar_t__ so_background_thread; } ;
struct proc {struct filedesc* p_fd; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
struct filedesc {int fd_nfiles; int* fd_ofileflags; struct fileproc** fd_ofiles; } ;
struct TYPE_2__ {scalar_t__ fg_data; } ;


 scalar_t__ DTYPE_NETPOLICY ;
 scalar_t__ DTYPE_SOCKET ;
 scalar_t__ FILEGLOB_DTYPE (TYPE_1__*) ;
 int TASK_POLICY_ALL_SOCKETS_BG ;
 scalar_t__ THREAD_NULL ;
 int TRAFFIC_MGT_SO_BACKGROUND ;
 int UF_RESERVED ;
 int necp_set_client_as_background (struct proc*,struct fileproc*,int) ;
 int proc_fdlock (struct proc*) ;
 int proc_fdunlock (struct proc*) ;
 int proc_get_effective_task_policy (int ,int ) ;
 int proc_get_effective_thread_policy (scalar_t__,int ) ;
 int proc_task (struct proc*) ;
 int socket_clear_traffic_mgt_flags (struct socket*,int ) ;
 int socket_set_traffic_mgt_flags (struct socket*,int ) ;

__attribute__((used)) static void
do_background_socket(struct proc *p, thread_t thread)
{
#pragma unused(p, thread)

}
