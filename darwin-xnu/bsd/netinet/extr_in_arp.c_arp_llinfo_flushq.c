
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct llinfo_arp {int la_holdq; scalar_t__ la_prbreq_cnt; } ;
struct TYPE_2__ {int held; int purged; } ;


 int VERIFY (int ) ;
 int _flushq (int *) ;
 TYPE_1__ arpstat ;
 int atomic_add_32 (int *,int ) ;
 int qempty (int *) ;
 int qlen (int *) ;

__attribute__((used)) static uint32_t
arp_llinfo_flushq(struct llinfo_arp *la)
{
 uint32_t held = qlen(&la->la_holdq);

 if (held != 0) {
  atomic_add_32(&arpstat.purged, held);
  atomic_add_32(&arpstat.held, -held);
  _flushq(&la->la_holdq);
 }
 la->la_prbreq_cnt = 0;
 VERIFY(qempty(&la->la_holdq));
 return (held);
}
