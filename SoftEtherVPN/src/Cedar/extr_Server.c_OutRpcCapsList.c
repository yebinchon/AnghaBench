
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int ct_key ;
typedef int ct_description ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int Value; int Name; } ;
struct TYPE_5__ {int CapsList; } ;
typedef int PACK ;
typedef TYPE_1__ CAPSLIST ;
typedef TYPE_2__ CAPS ;


 int Format (char*,int,char*,int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIntEx (int *,char*,int ,scalar_t__,scalar_t__) ;
 int PackAddStrEx (int *,char*,int ,scalar_t__,scalar_t__) ;
 int PackAddUniStrEx (int *,char*,int *,scalar_t__,scalar_t__) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;
 int StrToUni (int *,int,int ) ;
 int UniIsEmptyStr (int *) ;
 int UniStrCpy (int *,int,int *) ;
 int Zero (int *,int) ;
 int * _UU (char*) ;

void OutRpcCapsList(PACK *p, CAPSLIST *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackSetCurrentJsonGroupName(p, "CapsList");
 for (i = 0;i < LIST_NUM(t->CapsList);i++)
 {
  char tmp[MAX_SIZE];
  char ct_key[MAX_PATH];
  wchar_t ct_description[MAX_PATH];
  wchar_t *w;
  CAPS *c = LIST_DATA(t->CapsList, i);

  Format(tmp, sizeof(tmp), "caps_%s", c->Name);

  Format(ct_key, sizeof(ct_key), "CT_%s", c->Name);

  Zero(ct_description, sizeof(ct_description));
  w = _UU(ct_key);
  if (UniIsEmptyStr(w) == 0)
  {
   UniStrCpy(ct_description, sizeof(ct_description), w);
  }
  else
  {
   StrToUni(ct_description, sizeof(ct_description), c->Name);
  }

  PackAddInt(p, tmp, c->Value);

  PackAddStrEx(p, "CapsName", c->Name, i, LIST_NUM(t->CapsList));
  PackAddIntEx(p, "CapsValue", c->Value, i, LIST_NUM(t->CapsList));
  PackAddUniStrEx(p, "CapsDescrption", ct_description, i, LIST_NUM(t->CapsList));
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
