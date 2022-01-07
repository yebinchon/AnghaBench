
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_sfflags; int kn_sdata; } ;
struct kevent_internal_s {int flags; int fflags; int data; } ;


 int EV_ENABLE ;
 int spec_knote_select_and_link (struct knote*) ;

__attribute__((used)) static int
filt_spectouch(struct knote *kn, struct kevent_internal_s *kev)
{
 kn->kn_sdata = kev->data;
 kn->kn_sfflags = kev->fflags;

 if (kev->flags & EV_ENABLE) {
  return spec_knote_select_and_link(kn);
 }

 return 0;
}
