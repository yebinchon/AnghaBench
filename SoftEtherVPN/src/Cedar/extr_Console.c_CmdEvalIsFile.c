
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
struct TYPE_5__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ IsEmptyUniStr (int *) ;
 int IsFileExistsW (int *) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int UniFormat (int *,int,int *,int *) ;
 int UniStrCpy (int *,int,int *) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

bool CmdEvalIsFile(CONSOLE *c, wchar_t *str, void *param)
{
 wchar_t tmp[MAX_PATH];

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniStrCpy(tmp, sizeof(tmp), str);

 if (IsEmptyUniStr(tmp))
 {
  c->Write(c, _UU("CMD_FILE_NAME_EMPTY"));
  return 0;
 }

 if (IsFileExistsW(tmp) == 0)
 {
  wchar_t tmp2[MAX_SIZE];

  UniFormat(tmp2, sizeof(tmp2), _UU("CMD_FILE_NOT_FOUND"), tmp);
  c->Write(c, tmp2);

  return 0;
 }

 return 1;
}
