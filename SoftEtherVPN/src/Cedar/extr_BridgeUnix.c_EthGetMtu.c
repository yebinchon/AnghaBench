
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lifreq {int dummy; } ;
struct ifreq {scalar_t__ lifr_mtu; scalar_t__ ifr_mtu; int ifr_name; int lifr_name; } ;
typedef int ifr ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ CurrentMtu; int SocketBsdIf; int Socket; int Name; scalar_t__ IsRawIpMode; int * Tap; } ;
typedef TYPE_1__ ETH ;


 int Debug (char*,int ,scalar_t__) ;
 int SIOCGIFMTU ;
 int SIOCGLIFMTU ;
 int StrCpy (int ,int,int ) ;
 int Zero (struct ifreq*,int) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;

UINT EthGetMtu(ETH *e)
{
 return 0;

}
