
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_status; } ;


 int KN_STAYACTIVE ;
 int knote_deactivate (struct knote*) ;
 int knote_get_kq (struct knote*) ;
 int kqlock (int ) ;
 int kqunlock (int ) ;

void
knote_clearstayactive(struct knote *kn)
{
 kqlock(knote_get_kq(kn));
 kn->kn_status &= ~KN_STAYACTIVE;
 knote_deactivate(kn);
 kqunlock(knote_get_kq(kn));
}
