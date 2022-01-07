
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lifreq {int dummy; } ;
struct ifreq {int lifr_mtu; int ifr_mtu; int ifr_name; int lifr_name; } ;
typedef int ifr ;
typedef int UINT ;
struct TYPE_3__ {int InitialMtu; int SocketBsdIf; int Socket; int CurrentMtu; int Name; scalar_t__ IsRawIpMode; int * Tap; } ;
typedef TYPE_1__ ETH ;


 int Debug (char*,int ,int) ;
 int SIOCSIFMTU ;
 int SIOCSLIFMTU ;
 int StrCpy (int ,int,int ) ;
 int Zero (struct ifreq*,int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;

bool EthSetMtu(ETH *e, UINT mtu)
{
 return 0;

}
