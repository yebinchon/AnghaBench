
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int tmp ;
typedef int IO ;


 int * FileCreateInnerW (int *) ;
 int InnerFilePathW (int *,int,int *) ;
 int MAX_SIZE ;

IO *FileCreateW(wchar_t *name)
{
 wchar_t tmp[MAX_SIZE];

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 InnerFilePathW(tmp, sizeof(tmp), name);

 return FileCreateInnerW(tmp);
}
