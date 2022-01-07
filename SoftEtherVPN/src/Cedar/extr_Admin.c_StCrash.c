
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {TYPE_1__* Server; } ;
struct TYPE_4__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int RPC_TEST ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int CrashNow () ;
 int ERR_NO_ERROR ;
 int MsSetEnableMinidump (int) ;
 int SERVER_ADMIN_ONLY ;

UINT StCrash(ADMIN *a, RPC_TEST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;





 CrashNow();

 return ERR_NO_ERROR;
}
