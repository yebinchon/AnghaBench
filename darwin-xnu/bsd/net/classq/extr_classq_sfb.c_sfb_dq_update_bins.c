
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int64_t ;
typedef scalar_t__ u_int32_t ;
struct timespec {int dummy; } ;
struct sfbbinstats {int pkts; scalar_t__ bytes; } ;
struct sfb_fcl {int fclist; } ;
struct sfb {int sfb_current; scalar_t__ sfb_fc_threshold; int sfb_allocation; } ;


 int SFB_BINFT (struct sfb*,int,int,int) ;
 int SFB_BINMASK (int ) ;
 struct sfbbinstats* SFB_BINST (struct sfb*,int,int,int) ;
 int SFB_FC_LEVEL ;
 struct sfb_fcl* SFB_FC_LIST (struct sfb*,int) ;
 int SFB_IS_DELAYHIGH (struct sfb*) ;
 int SFB_LEVELS ;
 scalar_t__ SFB_QUEUE_DELAYBASED (struct sfb*) ;
 int STAILQ_EMPTY (int *) ;
 int VERIFY (int) ;
 int sfb_decrement_bin (struct sfb*,struct sfbbinstats*,int ,struct timespec*) ;
 int sfb_fclist_append (struct sfb*,struct sfb_fcl*) ;

__attribute__((used)) static inline void
sfb_dq_update_bins(struct sfb *sp, uint32_t pkt_sfb_hash, uint32_t pkt_len,
    struct timespec *now, u_int32_t qsize)
{

 int i;

 struct sfbbinstats *bin;
 int s, n;
 struct sfb_fcl *fcl = ((void*)0);
 uint8_t *pkt_sfb_hash8 = (uint8_t *)&pkt_sfb_hash;

 s = sp->sfb_current;
 VERIFY((s + (s ^ 1)) == 1);
 for (i = 0; i < SFB_LEVELS; i++) {
  if (s == 0)
   n = SFB_BINMASK(pkt_sfb_hash8[i]);
  else
   n = SFB_BINMASK(pkt_sfb_hash8[i + 2]);

  bin = SFB_BINST(sp, i, n, s);

  VERIFY(bin->pkts > 0 && bin->bytes >= pkt_len);
  bin->pkts--;
  bin->bytes -= pkt_len;
  if (bin->pkts == 0)
   sfb_decrement_bin(sp, bin,
       SFB_BINFT(sp, i, n, s), now);
  if (i != SFB_FC_LEVEL)
   continue;
  if (SFB_QUEUE_DELAYBASED(sp)) {
   if (!(SFB_IS_DELAYHIGH(sp)) ||
       bin->bytes <= sp->sfb_fc_threshold)
    fcl = SFB_FC_LIST(sp, n);
  } else if (bin->pkts <= (sp->sfb_allocation >> 2)) {
   fcl = SFB_FC_LIST(sp, n);
  }
  if (fcl != ((void*)0) && !STAILQ_EMPTY(&fcl->fclist))
   sfb_fclist_append(sp, fcl);
  fcl = ((void*)0);
 }

}
