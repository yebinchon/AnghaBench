
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_STATUS_T ;






 int VCOS_EAGAIN ;
 int VCOS_EINVAL ;
 int VCOS_ENOMEM ;
 int VCOS_ENOSPC ;
 int VCOS_ENXIO ;

VCOS_STATUS_T vcos_pthreads_map_error(int error)
{
   switch (error)
   {
   case 130:
      return VCOS_ENOMEM;
   case 128:
      return VCOS_ENXIO;
   case 131:
      return VCOS_EAGAIN;
   case 129:
      return VCOS_ENOSPC;
   default:
      return VCOS_EINVAL;
   }
}
