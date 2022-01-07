
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int UINT ;
struct TYPE_3__ {int TypeInt; char* FormatStr; int MaxValue; int MinValue; scalar_t__ AllowZero; } ;
typedef TYPE_1__ POLICY_ITEM ;


 TYPE_1__* GetPolicyItem (int ) ;
 int UniFormat (int *,int,int *,int *,...) ;
 int UniStrCpy (int *,int ,int *) ;
 int * _UU (char*) ;

void GetPolicyValueRangeStr(wchar_t *str, UINT size, UINT id)
{
 POLICY_ITEM *p;

 if (str == ((void*)0))
 {
  return;
 }

 p = GetPolicyItem(id);

 if (p->TypeInt == 0)
 {

  UniStrCpy(str, size, _UU("CMD_PolicyList_Range_Bool"));
 }
 else
 {
  wchar_t *tag;
  wchar_t tmp1[256], tmp2[256];


  if (p->AllowZero)
  {
   tag = _UU("CMD_PolicyList_Range_Int_2");
  }
  else
  {
   tag = _UU("CMD_PolicyList_Range_Int_1");
  }

  UniFormat(tmp1, sizeof(tmp1), _UU(p->FormatStr), p->MinValue);
  UniFormat(tmp2, sizeof(tmp2), _UU(p->FormatStr), p->MaxValue);

  UniFormat(str, size, tag, tmp1, tmp2);
 }
}
