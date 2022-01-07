
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct fileproc {int dummy; } ;
typedef int proc_t ;


 int falloc_withalloc_locked (int ,struct fileproc**,int*,int ,int ,int *,int) ;
 int fileproc_alloc_init ;

int
falloc_locked(proc_t p, struct fileproc **resultfp, int *resultfd,
       vfs_context_t ctx, int locked)
{
 return (falloc_withalloc_locked(p, resultfp, resultfd, ctx,
     fileproc_alloc_init, ((void*)0), locked));
}
