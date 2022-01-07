
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq32 {int dummy; } ;
struct ifbaconf32 {int dummy; } ;
struct bridge_softc {int dummy; } ;


 int BRIDGE_IOCTL_RTS ;

__attribute__((used)) static int
bridge_ioctl_rts32(struct bridge_softc *sc, void *arg)
{
 struct ifbaconf32 *bac = arg;
 struct ifbareq32 bareq;
 int error = 0;

 BRIDGE_IOCTL_RTS;
 return (error);
}
