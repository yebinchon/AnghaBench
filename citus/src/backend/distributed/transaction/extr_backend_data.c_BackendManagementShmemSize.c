
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Size ;
typedef int BackendManagementShmemData ;
typedef int BackendData ;


 int TotalProcCount () ;
 size_t add_size (size_t,int) ;
 int mul_size (int,int) ;

__attribute__((used)) static size_t
BackendManagementShmemSize(void)
{
 Size size = 0;
 int totalProcs = TotalProcCount();

 size = add_size(size, sizeof(BackendManagementShmemData));
 size = add_size(size, mul_size(sizeof(BackendData), totalProcs));

 return size;
}
