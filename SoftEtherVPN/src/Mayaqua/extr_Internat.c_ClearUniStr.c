
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniStrCpy (int *,int ,char*) ;

void ClearUniStr(wchar_t *str, UINT str_size)
{
 UniStrCpy(str, str_size, L"");
}
