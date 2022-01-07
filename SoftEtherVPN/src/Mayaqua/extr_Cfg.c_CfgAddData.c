
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BUF ;


 int CfgAddLine (int *,char*,scalar_t__) ;
 char* CfgEscape (char*) ;
 int CfgTypeToStr (scalar_t__) ;
 int Free (char*) ;
 char* Malloc (scalar_t__) ;
 int StrCat (char*,scalar_t__,char*) ;
 int StrCpy (char*,scalar_t__,int ) ;
 scalar_t__ StrLen (char*) ;

void CfgAddData(BUF *b, UINT type, char *name, char *data, char *sub, UINT depth)
{
 char *tmp;
 char *name2;
 char *data2;
 char *sub2 = ((void*)0);
 UINT tmp_size;

 if (b == ((void*)0) || type == 0 || name == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 name2 = CfgEscape(name);
 data2 = CfgEscape(data);
 if (sub != ((void*)0))
 {
  sub2 = CfgEscape(sub);
 }

 tmp_size = StrLen(name2) + StrLen(data2) + 2 + 64 + 1;
 tmp = Malloc(tmp_size);

 if (sub2 != ((void*)0))
 {
  StrCpy(tmp, tmp_size, CfgTypeToStr(type));
  StrCat(tmp, tmp_size, " ");
  StrCat(tmp, tmp_size, name2);
  StrCat(tmp, tmp_size, " ");
  StrCat(tmp, tmp_size, data2);
  StrCat(tmp, tmp_size, " ");
  StrCat(tmp, tmp_size, sub2);
 }
 else
 {
  StrCpy(tmp, tmp_size, CfgTypeToStr(type));
  StrCat(tmp, tmp_size, " ");
  StrCat(tmp, tmp_size, name2);
  StrCat(tmp, tmp_size, " ");
  StrCat(tmp, tmp_size, data2);
 }

 Free(name2);
 Free(data2);
 if (sub2 != ((void*)0))
 {
  Free(sub2);
 }
 CfgAddLine(b, tmp, depth);
 Free(tmp);
}
