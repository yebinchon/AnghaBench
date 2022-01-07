
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct knote {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct fileproc {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
noop_kqfilter(struct fileproc *fp, struct knote *kn,
  struct kevent_internal_s *kev, vfs_context_t ctx)
{
#pragma unused(fp, kn, kev, ctx)
 return (ENXIO);
}
