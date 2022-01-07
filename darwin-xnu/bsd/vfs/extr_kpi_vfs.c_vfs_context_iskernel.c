
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vfs_context_t ;


 int kerncontext ;

int vfs_context_iskernel(vfs_context_t ctx)
{
 return ctx == &kerncontext;
}
