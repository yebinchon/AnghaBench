
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int Enabled; int MacAddress; } ;
typedef TYPE_1__ UNIX_VLAN ;
typedef int FOLDER ;
typedef int CLIENT ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddStr (int *,char*,char*) ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;

void CiWriteVLan(CLIENT *c, FOLDER *f, UNIX_VLAN *v)
{
 char tmp[MAX_SIZE];

 if (c == ((void*)0) || f == ((void*)0) || v == ((void*)0))
 {
  return;
 }

 MacToStr(tmp, sizeof(tmp), v->MacAddress);
 CfgAddStr(f, "MacAddress", tmp);
 CfgAddBool(f, "Enabled", v->Enabled);
}
