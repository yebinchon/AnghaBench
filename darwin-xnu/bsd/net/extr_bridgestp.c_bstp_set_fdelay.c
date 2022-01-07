
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_bridge_fdelay; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_MAX_FORWARD_DELAY ;
 int BSTP_MIN_FORWARD_DELAY ;
 int BSTP_TICK_VAL ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int EINVAL ;
 int bstp_reinit (struct bstp_state*) ;

int
bstp_set_fdelay(struct bstp_state *bs, int t)
{

 t *= BSTP_TICK_VAL;

 if (t < BSTP_MIN_FORWARD_DELAY || t > BSTP_MAX_FORWARD_DELAY)
  return (EINVAL);

 BSTP_LOCK(bs);
 bs->bs_bridge_fdelay = t;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
 return (0);
}
