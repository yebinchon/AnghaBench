
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {scalar_t__ bs_protover; int bs_bridge_htime; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_MAX_HELLO_TIME ;
 int BSTP_MIN_HELLO_TIME ;
 scalar_t__ BSTP_PROTO_STP ;
 int BSTP_TICK_VAL ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int EINVAL ;
 int EPERM ;
 int bstp_reinit (struct bstp_state*) ;

int
bstp_set_htime(struct bstp_state *bs, int t)
{

 t *= BSTP_TICK_VAL;


 if (bs->bs_protover != BSTP_PROTO_STP)
  return (EPERM);

 if (t < BSTP_MIN_HELLO_TIME || t > BSTP_MAX_HELLO_TIME)
  return (EINVAL);

 BSTP_LOCK(bs);
 bs->bs_bridge_htime = t;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
 return (0);
}
