
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int exe ;
struct TYPE_8__ {int BuildInfo; int VerString; } ;
struct TYPE_7__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;
typedef TYPE_2__ CEDAR ;


 int GetExeName (char*,int) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 TYPE_2__* NewCedar (int *,int *) ;
 int ReleaseCedar (TYPE_2__*) ;
 int UniFormat (int *,int,int ,int ,int ) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;

void CmdPrintAbout(CONSOLE *c)
{
 CEDAR *cedar;
 wchar_t tmp[MAX_SIZE];
 char exe[MAX_PATH];

 if (c == ((void*)0))
 {
  return;
 }

 cedar = NewCedar(((void*)0), ((void*)0));

 GetExeName(exe, sizeof(exe));

 UniFormat(tmp, sizeof(tmp), _UU("CMD_VPNCMD_ABOUT"),
  cedar->VerString, cedar->BuildInfo);

 c->Write(c, tmp);

 ReleaseCedar(cedar);
}
