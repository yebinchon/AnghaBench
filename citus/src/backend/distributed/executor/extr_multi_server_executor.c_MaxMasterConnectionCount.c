
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Max (int,int) ;
 int RESERVED_FD_COUNT ;
 int max_files_per_process ;

int
MaxMasterConnectionCount(void)
{
 return Max((max_files_per_process - RESERVED_FD_COUNT) / 2, 1);
}
