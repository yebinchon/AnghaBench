
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bridge_softc {int dummy; } ;
struct bridge_rtnode {int dummy; } ;


 int BRIDGE_LOCK_ASSERT_HELD (struct bridge_softc*) ;
 int ENOENT ;
 int bridge_rtnode_destroy (struct bridge_softc*,struct bridge_rtnode*) ;
 struct bridge_rtnode* bridge_rtnode_lookup (struct bridge_softc*,int const*,int ) ;

__attribute__((used)) static int
bridge_rtdaddr(struct bridge_softc *sc, const uint8_t *addr, uint16_t vlan)
{
 struct bridge_rtnode *brt;
 int found = 0;

 BRIDGE_LOCK_ASSERT_HELD(sc);





 while ((brt = bridge_rtnode_lookup(sc, addr, vlan)) != ((void*)0)) {
  bridge_rtnode_destroy(sc, brt);
  found = 1;
 }

 return (found ? 0 : ENOENT);
}
