
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq64 {int dummy; } ;
struct ifbaconf64 {int dummy; } ;
struct bridge_softc {int dummy; } ;


 int BRIDGE_IOCTL_RTS ;

__attribute__((used)) static int
bridge_ioctl_rts64(struct bridge_softc *sc, void *arg)
{
 struct ifbaconf64 *bac = arg;
 struct ifbareq64 bareq;
 int error = 0;

 BRIDGE_IOCTL_RTS;
 return (error);
}
