
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct fileproc {int dummy; } ;
typedef int caddr_t ;


 int ENOTTY ;

__attribute__((used)) static int
noop_ioctl(struct fileproc *fp, unsigned long com, caddr_t data,
     vfs_context_t ctx)
{
#pragma unused(fp, com, data, ctx)
 return (ENOTTY);
}
