
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_1__* Server; } ;
struct TYPE_10__ {int Interval; int lock; int UdpMode; int ServerPort; int ServerName; int Enable; } ;
struct TYPE_9__ {int KeepConnectInterval; int KeepConnectProtocol; int KeepConnectPort; int KeepConnectHost; int UseKeepConnect; } ;
struct TYPE_8__ {TYPE_3__* Keep; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_KEEP ;
typedef TYPE_3__ KEEP ;
typedef TYPE_4__ ADMIN ;


 int ERR_NO_ERROR ;
 int Lock (int ) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetKeep(ADMIN *a, RPC_KEEP *t)
{
 SERVER *s = a->Server;

 Zero(t, sizeof(RPC_KEEP));

 Lock(s->Keep->lock);
 {
  KEEP *k = s->Keep;
  t->UseKeepConnect = k->Enable;
  StrCpy(t->KeepConnectHost, sizeof(t->KeepConnectHost), k->ServerName);
  t->KeepConnectPort = k->ServerPort;
  t->KeepConnectProtocol = k->UdpMode;
  t->KeepConnectInterval = k->Interval / 1000;
 }
 Unlock(s->Keep->lock);

 return ERR_NO_ERROR;
}
