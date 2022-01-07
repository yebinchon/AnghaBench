
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int IntValue; int StrValue; } ;
typedef TYPE_1__ RPC_TEST ;
typedef int ADMIN ;


 int ERR_NO_ERROR ;
 int Format (int ,int,char*,int ) ;

UINT StTest(ADMIN *a, RPC_TEST *t)
{
 Format(t->StrValue, sizeof(t->StrValue), "%u", t->IntValue);

 return ERR_NO_ERROR;
}
