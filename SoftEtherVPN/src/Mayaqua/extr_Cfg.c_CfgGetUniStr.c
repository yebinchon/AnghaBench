
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ Type; int Buf; } ;
typedef TYPE_1__ ITEM ;
typedef int FOLDER ;


 TYPE_1__* CfgFindItem (int *,char*) ;
 scalar_t__ ITEM_TYPE_STRING ;
 int UniStrCpy (scalar_t__*,int ,int ) ;

bool CfgGetUniStr(FOLDER *f, char *name, wchar_t *str, UINT size)
{
 ITEM *t;

 if (f == ((void*)0) || name == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 str[0] = 0;

 t = CfgFindItem(f, name);
 if (t == ((void*)0))
 {
  return 0;
 }
 if (t->Type != ITEM_TYPE_STRING)
 {
  return 0;
 }
 UniStrCpy(str, size, t->Buf);
 return 1;
}
