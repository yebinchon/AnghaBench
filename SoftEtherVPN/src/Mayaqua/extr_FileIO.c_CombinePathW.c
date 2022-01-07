
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int ConbinePathW (int *,int ,int *,int *) ;

void CombinePathW(wchar_t *dst, UINT size, wchar_t *dirname, wchar_t *filename)
{
 ConbinePathW(dst, size, dirname, filename);
}
