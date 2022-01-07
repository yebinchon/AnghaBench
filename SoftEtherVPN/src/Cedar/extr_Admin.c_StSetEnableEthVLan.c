
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {TYPE_1__* Server; } ;
struct TYPE_8__ {int IntValue; int StrValue; } ;
struct TYPE_7__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_TEST ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ERR_INTERNAL_ERROR ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int GetServerCapsBool (TYPE_1__*,char*) ;
 int MAKEBOOL (int ) ;
 int MsIsAdmin () ;
 int SERVER_ADMIN_ONLY ;
 int SetVLanEnableStatus (int ,int ) ;

UINT StSetEnableEthVLan(ADMIN *a, RPC_TEST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 ret = ERR_NOT_SUPPORTED;


 return ret;
}
