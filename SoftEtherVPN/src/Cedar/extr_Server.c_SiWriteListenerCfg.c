
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DisableDos; int Port; int Enabled; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;

void SiWriteListenerCfg(FOLDER *f, SERVER_LISTENER *r)
{

 if (f == ((void*)0) || r == ((void*)0))
 {
  return;
 }

 CfgAddBool(f, "Enabled", r->Enabled);
 CfgAddInt(f, "Port", r->Port);
 CfgAddBool(f, "DisableDos", r->DisableDos);
}
