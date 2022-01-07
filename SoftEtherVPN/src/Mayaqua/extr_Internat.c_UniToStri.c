
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int UniFormat (int *,int ,char*,int) ;

void UniToStri(wchar_t *str, int i)
{
 UniFormat(str, 0, L"%i", i);
}
