
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int PACK ;


 int PackGetUniStrEx (int *,char*,int *,int ,int ) ;

bool PackGetUniStr(PACK *p, char *name, wchar_t *unistr, UINT size)
{
 return PackGetUniStrEx(p, name, unistr, size, 0);
}
