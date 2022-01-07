
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sfb {int sfb_current; } ;
struct TYPE_2__ {scalar_t__ pmark; } ;


 int SFB_BINMASK (int ) ;
 TYPE_1__* SFB_BINST (struct sfb*,int,int,int) ;
 int SFB_LEVELS ;
 scalar_t__ SFB_PMARK_TH ;
 int VERIFY (int) ;

__attribute__((used)) static inline int
sfb_pcheck(struct sfb *sp, uint32_t pkt_sfb_hash)
{

 int i, n;

 uint8_t *pkt_sfb_hash8 = (uint8_t *)&pkt_sfb_hash;
 int s;

 s = sp->sfb_current;
 VERIFY((s + (s ^ 1)) == 1);
 for (i = 0; i < SFB_LEVELS; i++) {
  if (s == 0)
   n = SFB_BINMASK(pkt_sfb_hash8[i]);
  else
   n = SFB_BINMASK(pkt_sfb_hash8[i + 2]);

  if (SFB_BINST(sp, i, n, s)->pmark < SFB_PMARK_TH)
   return (0);
 }

 return (1);
}
