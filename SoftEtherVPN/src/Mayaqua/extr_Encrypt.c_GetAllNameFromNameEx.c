
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_3__ {int * Country; int * Local; int * State; int * Unit; int * Organization; int * CommonName; } ;
typedef TYPE_1__ NAME ;


 int UniFormat (int*,int,char*,int*,int *) ;
 int UniStrCpy (int*,int,char*) ;
 int UniStrLen (int*) ;

void GetAllNameFromNameEx(wchar_t *str, UINT size, NAME *name)
{

 if (str == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 UniStrCpy(str, size, L"");
 if (name->CommonName != ((void*)0))
 {
  UniFormat(str, size, L"%s%s, ", str, name->CommonName);
 }
 if (name->Organization != ((void*)0))
 {
  UniFormat(str, size, L"%s%s, ", str, name->Organization);
 }
 if (name->Unit != ((void*)0))
 {
  UniFormat(str, size, L"%s%s, ", str, name->Unit);
 }
 if (name->State != ((void*)0))
 {
  UniFormat(str, size, L"%s%s, ", str, name->State);
 }
 if (name->Local != ((void*)0))
 {
  UniFormat(str, size, L"%s%s, ", str, name->Local);
 }
 if (name->Country != ((void*)0))
 {
  UniFormat(str, size, L"%s%s, ", str, name->Country);
 }

 if (UniStrLen(str) >= 3)
 {
  UINT len = UniStrLen(str);
  if (str[len - 2] == L',' &&
   str[len - 1] == L' ')
  {
   str[len - 2] = 0;
  }
 }
}
