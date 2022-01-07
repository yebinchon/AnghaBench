
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
typedef int d ;
struct TYPE_6__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef size_t UINT ;
struct TYPE_7__ {int FileList; } ;
typedef TYPE_2__ ENUM_DIR_WITH_SUB_DATA ;


 int EnumDirWithSubDirsMain (TYPE_2__*,char*) ;
 int FreeStrList (int ) ;
 char* LIST_DATA (int ,size_t) ;
 int LIST_NUM (int ) ;
 int NewListFast (int *) ;
 int UniCopyStr (char*) ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

UNI_TOKEN_LIST *EnumDirWithSubDirsW(wchar_t *dirname)
{
 ENUM_DIR_WITH_SUB_DATA d;
 UNI_TOKEN_LIST *ret;
 UINT i;

 if (dirname == ((void*)0))
 {
  dirname = L"./";
 }

 Zero(&d, sizeof(d));

 d.FileList = NewListFast(((void*)0));

 EnumDirWithSubDirsMain(&d, dirname);

 ret = ZeroMalloc(sizeof(UNI_TOKEN_LIST));

 ret->NumTokens = LIST_NUM(d.FileList);
 ret->Token = ZeroMalloc(sizeof(wchar_t *) * ret->NumTokens);

 for (i = 0;i < ret->NumTokens;i++)
 {
  wchar_t *s = LIST_DATA(d.FileList, i);

  ret->Token[i] = UniCopyStr(s);
 }

 FreeStrList(d.FileList);

 return ret;
}
