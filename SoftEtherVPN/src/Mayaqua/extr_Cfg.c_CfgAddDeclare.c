
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BUF ;


 int CfgAddLine (int *,char*,scalar_t__) ;
 char* CfgEscape (char*) ;
 int Format (char*,int ,char*,char*,char*) ;
 int Free (char*) ;
 char* Malloc (scalar_t__) ;
 scalar_t__ StrLen (char*) ;
 char* TAG_DECLARE ;

void CfgAddDeclare(BUF *b, char *name, UINT depth)
{
 char *tmp;
 char *name2;
 UINT tmp_size;

 if (b == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 name2 = CfgEscape(name);

 tmp_size = StrLen(name2) + 2 + StrLen(TAG_DECLARE);
 tmp = Malloc(tmp_size);

 Format(tmp, 0, "%s %s", TAG_DECLARE, name2);
 CfgAddLine(b, tmp, depth);
 CfgAddLine(b, "{", depth);
 Free(tmp);
 Free(name2);
}
