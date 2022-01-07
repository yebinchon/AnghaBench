
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int OsProductName; } ;
struct TYPE_6__ {int Title; } ;
typedef TYPE_1__ RPC_WINVER ;


 TYPE_5__* GetOsInfo () ;
 int StrCpy (int ,int,int ) ;
 int Win32GetWinVer (TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

void GetWinVer(RPC_WINVER *v)
{

 if (v == ((void*)0))
 {
  return;
 }




 Zero(v, sizeof(RPC_WINVER));
 StrCpy(v->Title, sizeof(v->Title), GetOsInfo()->OsProductName);

}
