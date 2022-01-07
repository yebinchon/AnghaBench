
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_7__ {int Columns; } ;
struct TYPE_6__ {int Right; int String; } ;
typedef TYPE_1__ CTC ;
typedef TYPE_2__ CT ;


 int CopyUniStr (char*) ;
 int Insert (int ,TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

void CtInsertColumn(CT *ct, wchar_t *str, bool right)
{
 CTC *ctc;

 if (ct == ((void*)0))
 {
  return;
 }
 if (str == ((void*)0))
 {
  str = L"";
 }

 ctc = ZeroMalloc(sizeof(CTC));
 ctc->String = CopyUniStr(str);
 ctc->Right = right;

 Insert(ct->Columns, ctc);
}
