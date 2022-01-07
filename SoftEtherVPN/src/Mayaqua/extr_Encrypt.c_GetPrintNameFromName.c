
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT ;
struct TYPE_3__ {char* CommonName; char* Organization; char* Unit; char* State; char* Local; char* Country; } ;
typedef TYPE_1__ NAME ;


 int UniStrCpy (int *,int ,char*) ;

void GetPrintNameFromName(wchar_t *str, UINT size, NAME *name)
{

 if (str == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 if (name->CommonName != ((void*)0))
 {
  UniStrCpy(str, size, name->CommonName);
 }
 else if (name->Organization != ((void*)0))
 {
  UniStrCpy(str, size, name->Organization);
 }
 else if (name->Unit != ((void*)0))
 {
  UniStrCpy(str, size, name->Unit);
 }
 else if (name->State != ((void*)0))
 {
  UniStrCpy(str, size, name->State);
 }
 else if (name->Local != ((void*)0))
 {
  UniStrCpy(str, size, name->Local);
 }
 else if (name->Country != ((void*)0))
 {
  UniStrCpy(str, size, name->Country);
 }
 else
 {
  UniStrCpy(str, size, L"untitled");
 }
}
