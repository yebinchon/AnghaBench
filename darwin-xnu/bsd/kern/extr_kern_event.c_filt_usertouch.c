
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct knote {int kn_sfflags; scalar_t__ kn_hookid; int kn_sdata; } ;
struct kevent_internal_s {int fflags; int data; } ;


 scalar_t__ FILTER_ACTIVE ;


 int NOTE_FFCTRLMASK ;
 int NOTE_FFLAGSMASK ;


 int NOTE_TRIGGER ;

__attribute__((used)) static int
filt_usertouch(struct knote *kn, struct kevent_internal_s *kev)
{
 uint32_t ffctrl;
 int fflags;

 ffctrl = kev->fflags & NOTE_FFCTRLMASK;
 fflags = kev->fflags & NOTE_FFLAGSMASK;
 switch (ffctrl) {
 case 129:
  break;
 case 131:
  kn->kn_sfflags &= fflags;
  break;
 case 128:
  kn->kn_sfflags |= fflags;
  break;
 case 130:
  kn->kn_sfflags = fflags;
  break;
 }
 kn->kn_sdata = kev->data;

 if (kev->fflags & NOTE_TRIGGER) {
  kn->kn_hookid = FILTER_ACTIVE;
 }
 return (int)kn->kn_hookid;
}
