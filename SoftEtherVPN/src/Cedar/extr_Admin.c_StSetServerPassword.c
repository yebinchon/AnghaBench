
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int HashedPassword; } ;
struct TYPE_8__ {TYPE_5__* Server; } ;
struct TYPE_7__ {int HashedPassword; int PlainTextPassword; } ;
typedef TYPE_1__ RPC_SET_PASSWORD ;
typedef TYPE_2__ ADMIN ;


 int ALog (TYPE_2__*,int *,char*) ;
 int Copy (int ,int ,int ) ;
 int ERR_NO_ERROR ;
 int HashAdminPassword (int ,int ) ;
 int IncrementServerConfigRevision (TYPE_5__*) ;
 scalar_t__ IsZero (int ,int) ;
 int SERVER_ADMIN_ONLY ;
 int SHA1_SIZE ;

UINT StSetServerPassword(ADMIN *a, RPC_SET_PASSWORD *t)
{
 SERVER_ADMIN_ONLY;

 if (IsZero(t->HashedPassword, sizeof(t->HashedPassword)))
 {

  HashAdminPassword(t->HashedPassword, t->PlainTextPassword);
 }

 Copy(a->Server->HashedPassword, t->HashedPassword, SHA1_SIZE);

 ALog(a, ((void*)0), "LA_SET_SERVER_PASSWORD");

 IncrementServerConfigRevision(a->Server);

 return ERR_NO_ERROR;
}
