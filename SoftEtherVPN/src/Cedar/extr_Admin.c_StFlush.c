
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {TYPE_1__* Server; } ;
struct TYPE_8__ {int IntValue; } ;
struct TYPE_7__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_TEST ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ERR_NO_ERROR ;
 int SERVER_ADMIN_ONLY ;
 int SiWriteConfigurationFile (TYPE_1__*) ;

UINT StFlush(ADMIN *a, RPC_TEST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 UINT size;

 SERVER_ADMIN_ONLY;

 size = SiWriteConfigurationFile(s);

 t->IntValue = size;

 return ERR_NO_ERROR;
}
