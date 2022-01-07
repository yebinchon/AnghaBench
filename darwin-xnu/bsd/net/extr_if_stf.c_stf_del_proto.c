
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stf_softc {scalar_t__ sc_protocol_family; } ;
typedef scalar_t__ protocol_family_t ;
typedef int ifnet_t ;
typedef int errno_t ;


 scalar_t__ ifnet_softc (int ) ;

__attribute__((used)) static errno_t
stf_del_proto(
 ifnet_t ifp,
 protocol_family_t protocol_family)
{
 if (((struct stf_softc*)ifnet_softc(ifp))->sc_protocol_family == protocol_family)
  ((struct stf_softc*)ifnet_softc(ifp))->sc_protocol_family = 0;

 return 0;
}
