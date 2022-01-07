
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct knote {int dummy; } ;
struct kevent_internal_s {int dummy; } ;
struct fileproc {TYPE_1__* f_ops; } ;
struct TYPE_2__ {int (* fo_kqfilter ) (struct fileproc*,struct knote*,struct kevent_internal_s*,int ) ;} ;


 int stub1 (struct fileproc*,struct knote*,struct kevent_internal_s*,int ) ;

int
fo_kqfilter(struct fileproc *fp, struct knote *kn,
  struct kevent_internal_s *kev, vfs_context_t ctx)
{
        return ((*fp->f_ops->fo_kqfilter)(fp, kn, kev, ctx));
}
