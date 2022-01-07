
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scrub; } ;
struct TYPE_3__ {scalar_t__ scrub; } ;
struct pf_state {TYPE_2__ dst; TYPE_1__ src; } ;


 int pf_state_scrub_pl ;
 int pool_put (int *,scalar_t__) ;

void
pf_normalize_tcp_cleanup(struct pf_state *state)
{
 if (state->src.scrub)
  pool_put(&pf_state_scrub_pl, state->src.scrub);
 if (state->dst.scrub)
  pool_put(&pf_state_scrub_pl, state->dst.scrub);


}
