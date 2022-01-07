
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Cedar; } ;
struct TYPE_7__ {int Key; } ;
typedef TYPE_1__ RPC_CLIENT_DELETE_CA ;
typedef TYPE_2__ CLIENT ;


 int CiSaveConfigurationFile (TYPE_2__*) ;
 int CiSetError (TYPE_2__*,int ) ;
 int DeleteCa (int ,int ) ;
 int ERR_OBJECT_NOT_FOUND ;

bool CtDeleteCa(CLIENT *c, RPC_CLIENT_DELETE_CA *p)
{
 bool ret;

 if (c == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 ret = DeleteCa(c->Cedar, p->Key);

 if (ret == 0)
 {
  CiSetError(c, ERR_OBJECT_NOT_FOUND);
 }

 CiSaveConfigurationFile(c);

 return ret;
}
