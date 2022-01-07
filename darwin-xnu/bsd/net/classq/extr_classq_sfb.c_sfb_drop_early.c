
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int16_t ;
struct timespec {int dummy; } ;
struct sfbbinstats {scalar_t__ pkts; scalar_t__ pmark; } ;
struct sfb {int sfb_current; scalar_t__ sfb_allocation; int sfb_flags; } ;


 int SFBF_SUSPENDED ;
 int SFB_BINFT (struct sfb*,int,int,int) ;
 int SFB_BINMASK (int ) ;
 struct sfbbinstats* SFB_BINST (struct sfb*,int,int,int) ;
 int SFB_FC_LEVEL ;
 int SFB_LEVELS ;
 int VERIFY (int) ;
 int sfb_bin_mark_or_drop (struct sfb*,struct sfbbinstats*) ;
 int sfb_increment_bin (struct sfb*,struct sfbbinstats*,int ,struct timespec*) ;

__attribute__((used)) static int
sfb_drop_early(struct sfb *sp, uint32_t pkt_sfb_hash, u_int16_t *pmin,
    struct timespec *now)
{

 int i;

 struct sfbbinstats *bin;
 int s, n, ret = 0;
 uint8_t *pkt_sfb_hash8 = (uint8_t *)&pkt_sfb_hash;

 s = sp->sfb_current;
 VERIFY((s + (s ^ 1)) == 1);

 *pmin = (u_int16_t)-1;
 for (i = 0; i < SFB_LEVELS; i++) {
  if (s == 0)
   n = SFB_BINMASK(pkt_sfb_hash8[i]);
  else
   n = SFB_BINMASK(pkt_sfb_hash8[i + 2]);

  bin = SFB_BINST(sp, i, n, s);
  if (*pmin > (u_int16_t)bin->pmark)
   *pmin = (u_int16_t)bin->pmark;

  if (bin->pkts >= sp->sfb_allocation)
   sfb_increment_bin(sp, bin,
       SFB_BINFT(sp, i, n, s), now);
  if (i == SFB_FC_LEVEL)
   ret = sfb_bin_mark_or_drop(sp, bin);
 }


 if (sp->sfb_flags & SFBF_SUSPENDED)
  ret = 1;

 return (ret);
}
