
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;
typedef int REMOTE_CLIENT ;


 int CmdIsAccountName (int *,int *) ;
 int MAX_SIZE ;
 int UniFormat (int *,int,int ,int *,...) ;
 int UniStrCpy (int *,int,int *) ;
 int _UU (char*) ;

void CmdGenerateImportName(REMOTE_CLIENT *r, wchar_t *name, UINT size, wchar_t *old_name)
{
 UINT i;

 if (r == ((void*)0) || name == ((void*)0) || old_name == ((void*)0))
 {
  return;
 }

 for (i = 1;;i++)
 {
  wchar_t tmp[MAX_SIZE];
  if (i == 1)
  {
   UniFormat(tmp, sizeof(tmp), _UU("CM_IMPORT_NAME_1"), old_name);
  }
  else
  {
   UniFormat(tmp, sizeof(tmp), _UU("CM_IMPORT_NAME_2"), old_name, i);
  }

  if (CmdIsAccountName(r, tmp) == 0)
  {
   UniStrCpy(name, size, tmp);
   return;
  }
 }
}
