
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_status; int kn_id; int kn_filtid; int kn_udata; } ;


 int BSD_KEVENT_KNOTE_ACTIVATE ;
 int KDBG_FILTERED (int ,int ,int,int ) ;
 int KEV_EVTID (int ) ;
 int KN_ACTIVE ;
 scalar_t__ knote_enqueue (struct knote*) ;
 int knote_wakeup (struct knote*) ;

__attribute__((used)) static void
knote_activate(struct knote *kn)
{
 if (kn->kn_status & KN_ACTIVE)
  return;

 KDBG_FILTERED(KEV_EVTID(BSD_KEVENT_KNOTE_ACTIVATE),
               kn->kn_udata, kn->kn_status | (kn->kn_id << 32),
               kn->kn_filtid);

 kn->kn_status |= KN_ACTIVE;
 if (knote_enqueue(kn))
  knote_wakeup(kn);
}
