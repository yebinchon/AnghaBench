
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe {int dummy; } ;
struct knote {TYPE_1__* kn_fp; } ;
struct TYPE_2__ {scalar_t__ f_data; } ;


 int filt_piperead_common (struct knote*,struct pipe*) ;

__attribute__((used)) static int
filt_piperead(struct knote *kn, long hint)
{
#pragma unused(hint)
 struct pipe *rpipe = (struct pipe *)kn->kn_fp->f_data;

 return filt_piperead_common(kn, rpipe);
}
