
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;


 int MAX_SIZE ;
 int UniFormat (int *,int,char*,int ) ;
 int WuUniReplace (int **,int *,int *) ;

__attribute__((used)) static void WuUniUintReplace(wchar_t **buf, wchar_t *key, UINT num)
{
 wchar_t tmp[MAX_SIZE];
 UniFormat(tmp, sizeof(tmp), L"%d", num);
 WuUniReplace(buf, key, tmp);
}
