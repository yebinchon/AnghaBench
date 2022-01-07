
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int subject_name; } ;
typedef TYPE_1__ X ;
typedef int UINT ;


 int GetPrintNameFromName (int *,int ,int ) ;

void GetPrintNameFromX(wchar_t *str, UINT size, X *x)
{

 if (x == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 GetPrintNameFromName(str, size, x->subject_name);
}
