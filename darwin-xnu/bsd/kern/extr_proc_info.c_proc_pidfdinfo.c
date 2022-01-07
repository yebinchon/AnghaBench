
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int vnode_t ;
typedef int user_addr_t ;
typedef scalar_t__ uint32_t ;
struct pshmnode {int dummy; } ;
struct psemnode {int dummy; } ;
struct pipe {int dummy; } ;
struct kqueue {int dummy; } ;
struct fileproc {int dummy; } ;
typedef int socket_t ;
typedef TYPE_2__* proc_t ;
typedef int int32_t ;
struct TYPE_23__ {TYPE_1__* p_fd; } ;
struct TYPE_22__ {struct kqueue* fd_wqkqueue; } ;


 int CHECK_SAME_USER ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;
 int ESRCH ;
 int PROC_INFO_CALL_PIDFDINFO ;
 TYPE_2__* PROC_NULL ;

 scalar_t__ PROC_PIDFDATALKINFO_SIZE ;

 scalar_t__ PROC_PIDFDKQUEUEINFO_SIZE ;

 scalar_t__ PROC_PIDFDKQUEUE_EXTINFO_SIZE ;

 scalar_t__ PROC_PIDFDPIPEINFO_SIZE ;

 scalar_t__ PROC_PIDFDPSEMINFO_SIZE ;

 scalar_t__ PROC_PIDFDPSHMINFO_SIZE ;

 scalar_t__ PROC_PIDFDSOCKETINFO_SIZE ;

 scalar_t__ PROC_PIDFDVNODEINFO_SIZE ;

 scalar_t__ PROC_PIDFDVNODEPATHINFO_SIZE ;
 int fp_drop (TYPE_2__*,int,struct fileproc*,int ) ;
 int fp_getfkq (TYPE_2__*,int,struct fileproc**,struct kqueue**) ;
 int fp_getfpipe (TYPE_2__*,int,struct fileproc**,struct pipe**) ;
 int fp_getfpsem (TYPE_2__*,int,struct fileproc**,struct psemnode**) ;
 int fp_getfpshm (TYPE_2__*,int,struct fileproc**,struct pshmnode**) ;
 int fp_getfsock (TYPE_2__*,int,struct fileproc**,int *) ;
 int fp_getfvpandvid (TYPE_2__*,int,struct fileproc**,int *,scalar_t__*) ;
 int pid_kqueue_extinfo (TYPE_2__*,struct kqueue*,int ,scalar_t__,int *) ;
 int pid_kqueueinfo (struct kqueue*,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 int pid_pipeinfo (struct pipe*,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 int pid_pseminfo (struct psemnode*,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 int pid_pshminfo (struct pshmnode*,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 int pid_socketinfo (int ,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 int pid_vnodeinfo (int ,scalar_t__,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 int pid_vnodeinfopath (int ,scalar_t__,struct fileproc*,TYPE_2__*,int,int ,scalar_t__,int *) ;
 TYPE_2__* proc_find (int) ;
 int proc_rele (TYPE_2__*) ;
 int proc_security_policy (TYPE_2__*,int ,int,int ) ;

int
proc_pidfdinfo(int pid, int flavor, int fd, user_addr_t buffer, uint32_t buffersize, int32_t * retval)
{
 proc_t p;
 int error = ENOTSUP;
 struct fileproc * fp = ((void*)0);
 uint32_t size;

 switch (flavor) {
  case 129:
   size = PROC_PIDFDVNODEINFO_SIZE;
   break;
  case 128:
   size = PROC_PIDFDVNODEPATHINFO_SIZE;
   break;
  case 130:
   size = PROC_PIDFDSOCKETINFO_SIZE;
   break;
  case 132:
   size = PROC_PIDFDPSEMINFO_SIZE;
   break;
  case 131:
   size = PROC_PIDFDPSHMINFO_SIZE;
   break;
  case 133:
   size = PROC_PIDFDPIPEINFO_SIZE;
   break;
  case 135:
   size = PROC_PIDFDKQUEUEINFO_SIZE;
   break;
  case 134:
   size = PROC_PIDFDKQUEUE_EXTINFO_SIZE;
   if (buffer == (user_addr_t)0)
    size = 0;
   break;
  case 136:
   size = PROC_PIDFDATALKINFO_SIZE;
   break;

  default:
   return(EINVAL);

 }

 if (buffersize < size)
  return(ENOMEM);

 if ((p = proc_find(pid)) == PROC_NULL) {
  error = ESRCH;
  goto out;
 }


 if ((error = proc_security_policy(p, PROC_INFO_CALL_PIDFDINFO, flavor, CHECK_SAME_USER)))
  goto out1;

 switch (flavor) {
  case 129: {
   vnode_t vp;
   uint32_t vid=0;

   if ((error = fp_getfvpandvid(p, fd, &fp, &vp, &vid)) !=0) {
    goto out1;
   }

   error = pid_vnodeinfo(vp, vid, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 128: {
   vnode_t vp;
   uint32_t vid=0;

   if ((error = fp_getfvpandvid(p, fd, &fp, &vp, &vid)) !=0) {
    goto out1;
   }


   error = pid_vnodeinfopath(vp, vid, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 130: {
   socket_t so;

   if ((error = fp_getfsock(p, fd, &fp, &so)) !=0) {
    goto out1;
   }

   error = pid_socketinfo(so, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 132: {
   struct psemnode * psem;

   if ((error = fp_getfpsem(p, fd, &fp, &psem)) !=0) {
    goto out1;
   }

   error = pid_pseminfo(psem, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 131: {
   struct pshmnode * pshm;

   if ((error = fp_getfpshm(p, fd, &fp, &pshm)) !=0) {
    goto out1;
   }

   error = pid_pshminfo(pshm, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 133: {
   struct pipe * cpipe;

   if ((error = fp_getfpipe(p, fd, &fp, &cpipe)) !=0) {
    goto out1;
   }

   error = pid_pipeinfo(cpipe, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 135: {
   struct kqueue * kq;

   if (fd == -1) {
    if ((kq = p->p_fd->fd_wqkqueue) == ((void*)0)) {

     error = 0;
     break;
    }
   } else if ((error = fp_getfkq(p, fd, &fp, &kq)) != 0) {
    goto out1;
   }


   error = pid_kqueueinfo(kq, fp, p, fd, buffer, buffersize, retval);
  }
  break;

  case 134: {
   struct kqueue * kq;

   if (fd == -1) {
    if ((kq = p->p_fd->fd_wqkqueue) == ((void*)0)) {

     error = 0;
     break;
    }
   } else if ((error = fp_getfkq(p, fd, &fp, &kq)) != 0) {
    goto out1;
   }
   error = pid_kqueue_extinfo(p, kq, buffer, buffersize, retval);
  }
  break;

  default: {
   error = EINVAL;
   goto out1;
  }
 }

 if (fp) {
  fp_drop(p, fd, fp , 0);
 }
out1 :
 proc_rele(p);
out:
 return(error);
}
