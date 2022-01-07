
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* NoSaveConfig; void* NoSaveLog; } ;
typedef int LIST ;
typedef TYPE_1__ CLIENT ;


 int CiFreeIni (int *) ;
 int * CiLoadIni () ;
 int IniStrValue (int *,char*) ;
 void* ToBool (int ) ;

void CiLoadIniSettings(CLIENT *c)
{
 LIST *o;



 if (c == ((void*)0))
 {
  return;
 }

 o = CiLoadIni();

 if (o == ((void*)0))
 {
  return;
 }
 c->NoSaveLog = ToBool(IniStrValue(o, "NoSaveLog"));
 c->NoSaveConfig = ToBool(IniStrValue(o, "NoSaveConfig"));

 CiFreeIni(o);

}
