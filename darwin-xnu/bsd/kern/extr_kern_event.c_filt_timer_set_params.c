
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_sdata; int * kn_ext; } ;
struct filt_timer_params {int interval; int leeway; int deadline; } ;



__attribute__((used)) static void
filt_timer_set_params(struct knote *kn, struct filt_timer_params *params)
{
 kn->kn_ext[0] = params->deadline;
 kn->kn_ext[1] = params->leeway;
 kn->kn_sdata = params->interval;
}
