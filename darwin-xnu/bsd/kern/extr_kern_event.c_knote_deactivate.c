
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_status; } ;


 int KN_ACTIVE ;
 int KN_STAYACTIVE ;
 int knote_dequeue (struct knote*) ;

__attribute__((used)) static void
knote_deactivate(struct knote *kn)
{
 kn->kn_status &= ~KN_ACTIVE;
 if ((kn->kn_status & KN_STAYACTIVE) == 0)
  knote_dequeue(kn);
}
