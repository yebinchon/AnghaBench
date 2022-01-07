
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OS_INFO ;


 int OSGetOsInfo (int *) ;
 int * ZeroMalloc (int) ;
 int * os_info ;

void InitOsInfo()
{
 if (os_info != ((void*)0))
 {
  return;
 }

 os_info = ZeroMalloc(sizeof(OS_INFO));

 OSGetOsInfo(os_info);
}
