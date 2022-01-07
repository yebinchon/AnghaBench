
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int id ;
typedef int UINT ;
struct TYPE_11__ {TYPE_1__* Server; } ;
struct TYPE_10__ {int Id; } ;
struct TYPE_9__ {int * IPsecServer; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ ETHERIP_ID ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,char*) ;
 int DeleteEtherIPId (int *,char*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int GetServerCapsBool (TYPE_1__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int MAX_SIZE ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int StrCpy (char*,int,int ) ;

UINT StDeleteEtherIpId(ADMIN *a, ETHERIP_ID *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 char id[MAX_SIZE];

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;
 if (GetServerCapsBool(s, "b_support_ipsec") == 0 || s->IPsecServer == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 StrCpy(id, sizeof(id), t->Id);

 if (DeleteEtherIPId(s->IPsecServer, id) == 0)
 {
  return ERR_OBJECT_NOT_FOUND;
 }

 ALog(a, ((void*)0), "LA_DEL_ETHERIP_ID", id);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
