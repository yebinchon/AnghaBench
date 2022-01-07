
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_INFO_CALL_UDATA_INFO ;
 int __proc_info (int ,int,int,int ,void*,int) ;

int
proc_udata_info(int pid, int flavor, void *buffer, int buffersize)
{
 return (__proc_info(PROC_INFO_CALL_UDATA_INFO, pid, flavor, 0, buffer, buffersize));
}
