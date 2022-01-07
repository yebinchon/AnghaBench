
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_cga_nodecfg {int cga_prepare; int cga_pubkey; } ;
struct TYPE_2__ {int cga_prepare; int cga_pubkey; } ;


 int LCK_MTX_ASSERT_OWNED ;
 int VERIFY (int ) ;
 TYPE_1__ in6_cga ;
 int in6_cga_node_lock_assert (int ) ;

void
in6_cga_query(struct in6_cga_nodecfg *cfg)
{
 VERIFY(cfg != ((void*)0));
 in6_cga_node_lock_assert(LCK_MTX_ASSERT_OWNED);

 cfg->cga_pubkey = in6_cga.cga_pubkey;
 cfg->cga_prepare = in6_cga.cga_prepare;
}
