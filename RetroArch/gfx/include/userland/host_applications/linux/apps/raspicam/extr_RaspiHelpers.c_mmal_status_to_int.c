
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
 int MMAL_SUCCESS ;
 int vcos_log_error (char*) ;

int mmal_status_to_int(MMAL_STATUS_T status)
{
   if (status == MMAL_SUCCESS)
      return 0;
   else
   {
      switch (status)
      {
      case 134 :
         vcos_log_error("Out of memory");
         break;
      case 133 :
         vcos_log_error("Out of resources (other than memory)");
         break;
      case 138:
         vcos_log_error("Argument is invalid");
         break;
      case 132 :
         vcos_log_error("Function not implemented");
         break;
      case 135 :
         vcos_log_error("No such file or directory");
         break;
      case 129 :
         vcos_log_error("No such device or address");
         break;
      case 137 :
         vcos_log_error("I/O error");
         break;
      case 128 :
         vcos_log_error("Illegal seek");
         break;
      case 140 :
         vcos_log_error("Data is corrupt \attention FIXME: not POSIX");
         break;
      case 130 :
         vcos_log_error("Component is not ready \attention FIXME: not POSIX");
         break;
      case 141 :
         vcos_log_error("Component is not configured \attention FIXME: not POSIX");
         break;
      case 136 :
         vcos_log_error("Port is already connected ");
         break;
      case 131 :
         vcos_log_error("Port is disconnected");
         break;
      case 142 :
         vcos_log_error("Resource temporarily unavailable. Try again later");
         break;
      case 139 :
         vcos_log_error("Bad address");
         break;
      default :
         vcos_log_error("Unknown status error");
         break;
      }

      return 1;
   }
}
