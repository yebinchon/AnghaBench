
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int is_compatible_bit; } ;
struct TYPE_9__ {int Cedar; } ;
struct TYPE_8__ {TYPE_7__* x; } ;
typedef TYPE_1__ RPC_CERT ;
typedef TYPE_2__ CLIENT ;


 int AddCa (int ,TYPE_7__*) ;
 int CiSaveConfigurationFile (TYPE_2__*) ;
 int CiSetError (TYPE_2__*,int ) ;
 int ERR_NOT_RSA_1024 ;

bool CtAddCa(CLIENT *c, RPC_CERT *cert)
{

 if (c == ((void*)0) || cert == ((void*)0))
 {
  return 0;
 }

 if (cert->x->is_compatible_bit == 0)
 {
  CiSetError(c, ERR_NOT_RSA_1024);
  return 0;
 }

 AddCa(c->Cedar, cert->x);

 CiSaveConfigurationFile(c);

 return 1;
}
