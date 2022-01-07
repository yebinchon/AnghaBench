
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int SERVER ;
typedef int FOLDER ;


 int CfgGetBool (int *,char*) ;
 scalar_t__ CfgGetInt (int *,char*) ;
 int SiAddListenerEx (int *,scalar_t__,int,int) ;

void SiLoadListenerCfg(SERVER *s, FOLDER *f)
{
 bool enable;
 UINT port;
 bool disable_dos;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 enable = CfgGetBool(f, "Enabled");
 port = CfgGetInt(f, "Port");
 disable_dos = CfgGetBool(f, "DisableDos");

 if (port == 0)
 {
  return;
 }

 SiAddListenerEx(s, port, enable, disable_dos);
}
