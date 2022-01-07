
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct fd_vn_data {scalar_t__ fv_bufdone; scalar_t__ fv_buf; int fv_bufsiz; } ;
struct direntry {int dummy; } ;


 int refill_fd_direntries (int ,int ,struct fd_vn_data*,int*) ;

__attribute__((used)) static int
get_direntry(vfs_context_t ctx, vnode_t dvp, struct fd_vn_data *fvd,
    int *eofflagp, struct direntry **dpp)
{
 int eofflag;
 int error;

 *eofflagp = 0;
 *dpp = ((void*)0);
 error = 0;
 if (!fvd->fv_bufsiz) {
  error = refill_fd_direntries(ctx, dvp, fvd, &eofflag);
  if (error) {
   return (error);
  }
  if (eofflag) {
   *eofflagp = eofflag;
   return (error);
  }
 }

 *dpp = (struct direntry *)(fvd->fv_buf + fvd->fv_bufdone);
 return (error);
}
