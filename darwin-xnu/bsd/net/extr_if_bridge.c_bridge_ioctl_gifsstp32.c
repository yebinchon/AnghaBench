
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbpstpconf32 {int dummy; } ;
struct bridge_softc {int dummy; } ;


 int BRIDGE_IOCTL_GIFSSTP ;
 scalar_t__ bridge_in_bsd_mode (struct bridge_softc*) ;

__attribute__((used)) static int
bridge_ioctl_gifsstp32(struct bridge_softc *sc, void *arg)
{
 struct ifbpstpconf32 *bifstp = arg;
 int error = 0;

 if (bridge_in_bsd_mode(sc)) {
  BRIDGE_IOCTL_GIFSSTP;
 }
 return (error);
}
