
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifnet_t ;
typedef int if_fake_ref ;


 scalar_t__ ifnet_softc (int ) ;

__attribute__((used)) static if_fake_ref
ifnet_get_if_fake(ifnet_t ifp)
{
 return ((if_fake_ref)ifnet_softc(ifp));
}
