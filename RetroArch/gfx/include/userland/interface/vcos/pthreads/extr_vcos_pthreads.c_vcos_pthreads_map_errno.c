
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;


 int errno ;
 int vcos_pthreads_map_error (int ) ;

VCOS_STATUS_T vcos_pthreads_map_errno(void)
{
   return vcos_pthreads_map_error(errno);
}
