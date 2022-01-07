
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_2__* Server; } ;
struct TYPE_10__ {int IntValue; } ;
struct TYPE_9__ {TYPE_1__* Cedar; } ;
struct TYPE_8__ {int Bridge; } ;
typedef TYPE_3__ RPC_TEST ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*) ;
 int ERR_NO_ERROR ;
 int SERVER_ADMIN_ONLY ;
 int SiRebootServerEx (int ,int ) ;

UINT StRebootServer(ADMIN *a, RPC_TEST *t)
{
 SERVER_ADMIN_ONLY;

 ALog(a, ((void*)0), "LA_REBOOT_SERVER");

 SiRebootServerEx(a->Server->Cedar->Bridge, t->IntValue);

 return ERR_NO_ERROR;
}
