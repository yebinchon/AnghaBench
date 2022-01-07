
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbifconf64 {int dummy; } ;
struct bridge_softc {int dummy; } ;


 int BRIDGE_IOCTL_GIFS ;

__attribute__((used)) static int
bridge_ioctl_gifs64(struct bridge_softc *sc, void *arg)
{
 struct ifbifconf64 *bifc = arg;
 int error = 0;

 BRIDGE_IOCTL_GIFS;

 return (error);
}
