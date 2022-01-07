
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int UniFormat (int *,int ,char*,int ) ;

void UniToStru(wchar_t *str, UINT i)
{
 UniFormat(str, 0, L"%u", i);
}
