
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_inuse; int kn_status; } ;


 int KN_LOCKED ;
 int assert (int) ;
 int knote_zone ;
 int zfree (int ,struct knote*) ;

__attribute__((used)) static void
knote_free(struct knote *kn)
{
 assert(kn->kn_inuse == 0);
 assert((kn->kn_status & KN_LOCKED) == 0);
 zfree(knote_zone, kn);
}
