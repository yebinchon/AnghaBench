
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct fileproc {int dummy; } ;
typedef int proc_t ;
typedef int fp_allocfn_t ;


 int falloc_withalloc_locked (int ,struct fileproc**,int*,int ,int ,void*,int) ;
 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;

int
falloc_withalloc(proc_t p, struct fileproc **resultfp, int *resultfd,
    vfs_context_t ctx, fp_allocfn_t fp_zalloc, void *arg)
{
 int error;

 proc_fdlock(p);
 error = falloc_withalloc_locked(p,
     resultfp, resultfd, ctx, fp_zalloc, arg, 1);
 proc_fdunlock(p);

 return (error);
}
