
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bridge_softc {int sc_brtcnt; } ;
struct bridge_rtnode {TYPE_1__* brt_dst; } ;
struct TYPE_2__ {int bif_addrcnt; } ;


 int BRIDGE_LOCK_ASSERT_HELD (struct bridge_softc*) ;
 int LIST_REMOVE (struct bridge_rtnode*,int ) ;
 int bridge_rtnode_pool ;
 int brt_hash ;
 int brt_list ;
 int zfree (int ,struct bridge_rtnode*) ;

__attribute__((used)) static void
bridge_rtnode_destroy(struct bridge_softc *sc, struct bridge_rtnode *brt)
{
 BRIDGE_LOCK_ASSERT_HELD(sc);

 LIST_REMOVE(brt, brt_hash);

 LIST_REMOVE(brt, brt_list);
 sc->sc_brtcnt--;
 brt->brt_dst->bif_addrcnt--;
 zfree(bridge_rtnode_pool, brt);
}
