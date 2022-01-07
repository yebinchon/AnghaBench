
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int UnixGetDiskFree (char*,int *,int *,int *) ;
 int Win32GetDiskFree (char*,int *,int *,int *) ;

bool GetDiskFree(char *path, UINT64 *free_size, UINT64 *used_size, UINT64 *total_size)
{
 bool ret;

 if (path == ((void*)0))
 {
  path = "./";
 }




 ret = UnixGetDiskFree(path, free_size, used_size, total_size);


 return ret;
}
