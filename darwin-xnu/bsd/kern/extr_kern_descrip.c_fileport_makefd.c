
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct fileproc {struct fileglob* f_fglob; } ;
struct fileport_makefd_args {int port; } ;
struct fileglob {int dummy; } ;
typedef TYPE_1__* proc_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_port_t ;
typedef int int32_t ;
struct TYPE_8__ {int task; } ;


 int EINVAL ;
 int ENOMEM ;
 struct fileproc* FILEPROC_NULL ;
 scalar_t__ IPC_PORT_NULL ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_COPY_SEND ;
 int UF_EXCLOSE ;
 int fdalloc (TYPE_1__*,int ,int*) ;
 int * fdflags (TYPE_1__*,int) ;
 int fg_drop (struct fileproc*) ;
 int fg_ref (struct fileproc*) ;
 struct fileglob* fileport_port_to_fileglob (scalar_t__) ;
 struct fileproc* fileproc_alloc_init (int *) ;
 int fileproc_free (struct fileproc*) ;
 int get_task_ipcspace (int ) ;
 scalar_t__ ipc_object_copyin (int ,int ,int ,scalar_t__*) ;
 int ipc_port_release_send (scalar_t__) ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;
 int procfdtbl_releasefd (TYPE_1__*,int,struct fileproc*) ;

int
fileport_makefd(proc_t p, struct fileport_makefd_args *uap, int32_t *retval)
{
 struct fileglob *fg;
  struct fileproc *fp = FILEPROC_NULL;
 ipc_port_t port = IPC_PORT_NULL;
 mach_port_name_t send = uap->port;
 kern_return_t res;
 int fd;
 int err;

 res = ipc_object_copyin(get_task_ipcspace(p->task),
   send, MACH_MSG_TYPE_COPY_SEND, &port);

 if (res != KERN_SUCCESS) {
  err = EINVAL;
  goto out;
 }

 fg = fileport_port_to_fileglob(port);
 if (fg == ((void*)0)) {
  err = EINVAL;
  goto out;
 }

 fp = fileproc_alloc_init(((void*)0));
 if (fp == FILEPROC_NULL) {
  err = ENOMEM;
  goto out;
 }

 fp->f_fglob = fg;
 fg_ref(fp);

  proc_fdlock(p);
 err = fdalloc(p, 0, &fd);
 if (err != 0) {
  proc_fdunlock(p);
  fg_drop(fp);
  goto out;
 }
 *fdflags(p, fd) |= UF_EXCLOSE;

 procfdtbl_releasefd(p, fd, fp);
 proc_fdunlock(p);

 *retval = fd;
 err = 0;
out:
 if ((fp != ((void*)0)) && (0 != err)) {
  fileproc_free(fp);
 }

 if (IPC_PORT_NULL != port) {
  ipc_port_release_send(port);
 }

 return err;
}
