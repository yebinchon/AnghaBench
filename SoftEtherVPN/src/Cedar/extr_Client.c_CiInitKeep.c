
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int KeepConnectInterval; scalar_t__ KeepConnectProtocol; int KeepConnectPort; int KeepConnectHost; scalar_t__ UseKeepConnect; } ;
struct TYPE_8__ {TYPE_1__ Config; TYPE_2__* Keep; } ;
struct TYPE_7__ {int Interval; int UdpMode; int Enable; int lock; int ServerPort; int ServerName; } ;
typedef TYPE_2__ KEEP ;
typedef TYPE_3__ CLIENT ;


 scalar_t__ CONNECTION_UDP ;
 int Lock (int ) ;
 TYPE_2__* StartKeep () ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;

void CiInitKeep(CLIENT *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->Keep = StartKeep();


 if (c->Config.UseKeepConnect)
 {
  KEEP *k = c->Keep;
  Lock(k->lock);
  {
   StrCpy(k->ServerName, sizeof(k->ServerName), c->Config.KeepConnectHost);
   k->ServerPort = c->Config.KeepConnectPort;
   k->Interval = c->Config.KeepConnectInterval * 1000;
   k->UdpMode = (c->Config.KeepConnectProtocol == CONNECTION_UDP) ? 1 : 0;
   k->Enable = 1;
  }
  Unlock(k->lock);
 }
}
