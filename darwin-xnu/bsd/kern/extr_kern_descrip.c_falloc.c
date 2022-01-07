
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct fileproc {int dummy; } ;
typedef int proc_t ;


 int falloc_withalloc (int ,struct fileproc**,int*,int ,int ,int *) ;
 int fileproc_alloc_init ;

int
falloc(proc_t p, struct fileproc **resultfp, int *resultfd, vfs_context_t ctx)
{
 return (falloc_withalloc(p, resultfp, resultfd, ctx,
     fileproc_alloc_init, ((void*)0)));
}
