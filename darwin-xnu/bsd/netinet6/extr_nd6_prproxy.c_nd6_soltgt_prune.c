
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct nd6_prproxy_soltgt {scalar_t__ soltgt_cnt; int soltgt_q; } ;
struct nd6_prproxy_solsrc {int dummy; } ;


 struct nd6_prproxy_solsrc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct nd6_prproxy_solsrc*,int ) ;
 int VERIFY (int) ;
 int nd6_solsrc_free (struct nd6_prproxy_solsrc*) ;
 int solsrc_tqe ;

__attribute__((used)) static void
nd6_soltgt_prune(struct nd6_prproxy_soltgt *soltgt, u_int32_t max_ssrc)
{
 while (soltgt->soltgt_cnt >= max_ssrc) {
  struct nd6_prproxy_solsrc *ssrc;

  VERIFY(soltgt->soltgt_cnt != 0);
  --soltgt->soltgt_cnt;
  ssrc = TAILQ_FIRST(&soltgt->soltgt_q);
  VERIFY(ssrc != ((void*)0));
  TAILQ_REMOVE(&soltgt->soltgt_q, ssrc, solsrc_tqe);
  nd6_solsrc_free(ssrc);
 }
}
