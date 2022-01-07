
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int * CopyStrToUni (char*) ;
 int Free (int *) ;
 int SaveFileW (int *,void*,int ) ;

bool SaveFile(char *name, void *data, UINT size)
{
 wchar_t *name_w = CopyStrToUni(name);
 bool ret = SaveFileW(name_w, data, size);

 Free(name_w);

 return ret;
}
