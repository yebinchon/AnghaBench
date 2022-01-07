
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int name2 ;


 int ConvertPathW (int *) ;
 int MAX_SIZE ;
 int OSFileDeleteW (int *) ;
 int UniStrCpy (int *,int,int *) ;

bool FileDeleteInnerW(wchar_t *name)
{
 wchar_t name2[MAX_SIZE];

 if (name == ((void*)0))
 {
  return 0;
 }

 UniStrCpy(name2, sizeof(name2), name);
 ConvertPathW(name2);

 return OSFileDeleteW(name2);
}
