
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct uio {int dummy; } ;
struct fileproc {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
noop_read(struct fileproc *fp, struct uio *uio, int flags, vfs_context_t ctx)
{
#pragma unused(fp, uio, flags, ctx)
 return (ENXIO);
}
