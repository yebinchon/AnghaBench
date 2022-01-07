
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf {int lf_start; int lf_end; int * lf_owner; int lf_type; } ;
struct flock {int l_start; int l_len; int l_pid; int l_type; int l_whence; } ;
typedef int pid_t ;


 int F_UNLCK ;
 int LF_DBG_LOCKOP ;
 int SEEK_SET ;
 struct lockf* lf_getblock (struct lockf*,int ) ;
 int lf_print (char*,struct lockf*) ;
 int lockf_debug ;
 int proc_pid (int *) ;

__attribute__((used)) static int
lf_getlock(struct lockf *lock, struct flock *fl, pid_t matchpid)
{
 struct lockf *block;






 if ((block = lf_getblock(lock, matchpid))) {
  fl->l_type = block->lf_type;
  fl->l_whence = SEEK_SET;
  fl->l_start = block->lf_start;
  if (block->lf_end == -1)
   fl->l_len = 0;
  else
   fl->l_len = block->lf_end - block->lf_start + 1;
  if (((void*)0) != block->lf_owner) {




   fl->l_pid = proc_pid(block->lf_owner);
  } else
   fl->l_pid = -1;
 } else {
  fl->l_type = F_UNLCK;
 }
 return (0);
}
