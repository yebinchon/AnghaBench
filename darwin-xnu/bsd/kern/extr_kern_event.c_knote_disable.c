
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_status; } ;


 int KN_DISABLED ;
 int knote_dequeue (struct knote*) ;

__attribute__((used)) static void
knote_disable(struct knote *kn)
{
 if (kn->kn_status & KN_DISABLED)
  return;

 kn->kn_status |= KN_DISABLED;
 knote_dequeue(kn);
}
