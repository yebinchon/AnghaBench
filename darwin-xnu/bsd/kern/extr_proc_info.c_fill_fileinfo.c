
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_fileinfo {int fi_guardflags; int fi_status; int fi_type; int fi_offset; int fi_openflags; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef scalar_t__ proc_t ;
struct TYPE_2__ {int fg_count; int fg_offset; int fg_flag; } ;


 int FDFLAGS_GET (scalar_t__,int) ;
 int FILEGLOB_DTYPE (TYPE_1__*) ;
 scalar_t__ FILEPROC_TYPE (struct fileproc*) ;
 scalar_t__ FTYPE_GUARDED ;
 int GUARD_CLOSE ;
 int GUARD_DUP ;
 int GUARD_FILEPORT ;
 int GUARD_SOCKET_IPC ;
 int PROC_FI_GUARD_CLOSE ;
 int PROC_FI_GUARD_DUP ;
 int PROC_FI_GUARD_FILEPORT ;
 int PROC_FI_GUARD_SOCKET_IPC ;
 int PROC_FP_CLEXEC ;
 int PROC_FP_CLFORK ;
 int PROC_FP_GUARDED ;
 int PROC_FP_SHARED ;
 scalar_t__ PROC_NULL ;
 int UF_EXCLOSE ;
 int UF_FORKCLOSE ;
 scalar_t__ fp_isguarded (struct fileproc*,int ) ;

void
fill_fileinfo(struct fileproc * fp, proc_t proc, int fd, struct proc_fileinfo * fproc)
{
 fproc->fi_openflags = fp->f_fglob->fg_flag;
 fproc->fi_status = 0;
 fproc->fi_offset = fp->f_fglob->fg_offset;
 fproc->fi_type = FILEGLOB_DTYPE(fp->f_fglob);
 if (fp->f_fglob->fg_count > 1)
  fproc->fi_status |= PROC_FP_SHARED;
 if (proc != PROC_NULL) {
  if ((FDFLAGS_GET(proc, fd) & UF_EXCLOSE) != 0)
   fproc->fi_status |= PROC_FP_CLEXEC;
  if ((FDFLAGS_GET(proc, fd) & UF_FORKCLOSE) != 0)
   fproc->fi_status |= PROC_FP_CLFORK;
 }
 if (FILEPROC_TYPE(fp) == FTYPE_GUARDED) {
  fproc->fi_status |= PROC_FP_GUARDED;
  fproc->fi_guardflags = 0;
  if (fp_isguarded(fp, GUARD_CLOSE))
   fproc->fi_guardflags |= PROC_FI_GUARD_CLOSE;
  if (fp_isguarded(fp, GUARD_DUP))
   fproc->fi_guardflags |= PROC_FI_GUARD_DUP;
  if (fp_isguarded(fp, GUARD_SOCKET_IPC))
   fproc->fi_guardflags |= PROC_FI_GUARD_SOCKET_IPC;
  if (fp_isguarded(fp, GUARD_FILEPORT))
   fproc->fi_guardflags |= PROC_FI_GUARD_FILEPORT;
 }
}
