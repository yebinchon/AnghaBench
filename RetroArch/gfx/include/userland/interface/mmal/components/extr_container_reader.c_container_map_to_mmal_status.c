
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_STATUS_T ;
typedef int MMAL_STATUS_T ;


 int MMAL_ECORRUPT ;
 int MMAL_EINVAL ;
 int MMAL_ENOENT ;
 int MMAL_ENOMEM ;
 int MMAL_ENOSPC ;
 int MMAL_ENOTREADY ;
 int MMAL_SUCCESS ;
__attribute__((used)) static MMAL_STATUS_T container_map_to_mmal_status(VC_CONTAINER_STATUS_T cstatus)
{
   switch (cstatus)
   {
      case 128: return MMAL_SUCCESS;
      case 134: return MMAL_ECORRUPT;
      case 131: return MMAL_ENOMEM;
      case 130: return MMAL_ENOSPC;
      case 132: return MMAL_ENOTREADY;
      case 133: return MMAL_ENOENT;
      case 129: return MMAL_ENOENT;
      default: return MMAL_EINVAL;
   }
}
