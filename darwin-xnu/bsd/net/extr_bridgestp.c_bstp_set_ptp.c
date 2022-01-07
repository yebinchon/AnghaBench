
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {int bp_ptp_link; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_UNLOCK (struct bstp_state*) ;

int
bstp_set_ptp(struct bstp_port *bp, int set)
{
 struct bstp_state *bs = bp->bp_bs;

 BSTP_LOCK(bs);
 bp->bp_ptp_link = set;
 BSTP_UNLOCK(bs);
 return (0);
}
