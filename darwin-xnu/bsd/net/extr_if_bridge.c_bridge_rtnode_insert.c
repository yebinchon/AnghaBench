
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_softc {int sc_brtcnt; int sc_rtlist; } ;
struct bridge_rtnode {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct bridge_rtnode*,int ) ;
 int bridge_rthash_resize (struct bridge_softc*) ;
 int bridge_rtnode_hash (struct bridge_softc*,struct bridge_rtnode*) ;
 int brt_list ;

__attribute__((used)) static int
bridge_rtnode_insert(struct bridge_softc *sc, struct bridge_rtnode *brt)
{
 int error;

 error = bridge_rtnode_hash(sc, brt);
 if (error != 0)
  return (error);

 LIST_INSERT_HEAD(&sc->sc_rtlist, brt, brt_list);
 sc->sc_brtcnt++;

 bridge_rthash_resize(sc);

 return (0);
}
