
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct bstp_state {int bs_running; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int bsd_timeout (int ,struct bstp_state*,struct timespec*) ;
 int bstp_reinit (struct bstp_state*) ;
 int bstp_tick ;

void
bstp_init(struct bstp_state *bs)
{
 struct timespec ts;

 ts.tv_sec = 1;
 ts.tv_nsec = 0;

 BSTP_LOCK(bs);
 bsd_timeout(bstp_tick, bs, &ts);
 bs->bs_running = 1;
 bstp_reinit(bs);
 BSTP_UNLOCK(bs);
}
