
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_data; int kn_ext; int kn_fflags; } ;
struct kevent_internal_s {int ext; int fflags; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void
filt_wlremember_last_update(struct knote *kn, struct kevent_internal_s *kev,
  int error)
{
 kn->kn_fflags = kev->fflags;
 kn->kn_data = error;
 memcpy(kn->kn_ext, kev->ext, sizeof(kev->ext));
}
