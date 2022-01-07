
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;


 int FWRITE ;
 int MNT_WAIT ;
 scalar_t__ NULLVP ;
 int VNOP_FSYNC (scalar_t__,int ,int ) ;
 scalar_t__ sd_logvp ;
 int vnode_close (scalar_t__,int ,int ) ;

__attribute__((used)) static int
sd_closelog(vfs_context_t ctx)
{
 int error = 0;
 if (sd_logvp != NULLVP) {
  VNOP_FSYNC(sd_logvp, MNT_WAIT, ctx);
  error = vnode_close(sd_logvp, FWRITE, ctx);
 }

 return error;
}
