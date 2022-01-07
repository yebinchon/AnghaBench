
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int HashedPassword; } ;
struct TYPE_6__ {int HashedPassword; } ;
typedef TYPE_1__ RPC_SET_PASSWORD ;
typedef TYPE_2__ NAT ;


 int Copy (int ,int ,int ) ;
 int ERR_NO_ERROR ;
 int NiWriteConfig (TYPE_2__*) ;
 int SHA1_SIZE ;

UINT NtSetPassword(NAT *n, RPC_SET_PASSWORD *t)
{
 Copy(n->HashedPassword, t->HashedPassword, SHA1_SIZE);

 NiWriteConfig(n);

 return ERR_NO_ERROR;
}
