
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct sfbbinstats {int bytes; int pkts; } ;
struct sfb {int sfb_current; } ;


 int SFB_BINMASK (int ) ;
 struct sfbbinstats* SFB_BINST (struct sfb*,int,int,int) ;
 int SFB_LEVELS ;
 int VERIFY (int) ;

__attribute__((used)) static inline void
sfb_eq_update_bins(struct sfb *sp, uint32_t pkt_sfb_hash, uint32_t pkt_len)
{

 int i, n;

 int s;
 struct sfbbinstats *bin;
 uint8_t *pkt_sfb_hash8 = (uint8_t *)&pkt_sfb_hash;
 s = sp->sfb_current;
 VERIFY((s + (s ^ 1)) == 1);
 for (i = 0; i < SFB_LEVELS; i++) {
  if (s == 0)
   n = SFB_BINMASK(pkt_sfb_hash8[i]);
  else
   n = SFB_BINMASK(pkt_sfb_hash8[i + 2]);

  bin = SFB_BINST(sp, i, n, s);
  bin->pkts++;
  bin->bytes += pkt_len;
 }

}
