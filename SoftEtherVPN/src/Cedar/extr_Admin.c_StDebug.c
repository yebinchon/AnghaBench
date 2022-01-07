
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int t2 ;
typedef scalar_t__ UINT ;
struct TYPE_13__ {TYPE_1__* Server; } ;
struct TYPE_12__ {int StrValue; int IntValue; } ;
struct TYPE_11__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_TEST ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int Copy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ ERR_NO_ERROR ;
 int SERVER_ADMIN_ONLY ;
 scalar_t__ SiDebug (TYPE_1__*,TYPE_2__*,int ,int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StDebug(ADMIN *a, RPC_TEST *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 RPC_TEST t2;

 SERVER_ADMIN_ONLY;

 Zero(&t2, sizeof(t2));

 ret = SiDebug(s, &t2, t->IntValue, t->StrValue);

 if (ret == ERR_NO_ERROR)
 {
  Copy(t, &t2, sizeof(RPC_TEST));
 }
 else
 {
  Zero(t, sizeof(RPC_TEST));
 }

 return ret;
}
