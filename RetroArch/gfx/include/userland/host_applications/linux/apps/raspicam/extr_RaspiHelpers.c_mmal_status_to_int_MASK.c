#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int MMAL_STATUS_T ;

/* Variables and functions */
#define  MMAL_EAGAIN 142 
#define  MMAL_ECONFIG 141 
#define  MMAL_ECORRUPT 140 
#define  MMAL_EFAULT 139 
#define  MMAL_EINVAL 138 
#define  MMAL_EIO 137 
#define  MMAL_EISCONN 136 
#define  MMAL_ENOENT 135 
#define  MMAL_ENOMEM 134 
#define  MMAL_ENOSPC 133 
#define  MMAL_ENOSYS 132 
#define  MMAL_ENOTCONN 131 
#define  MMAL_ENOTREADY 130 
#define  MMAL_ENXIO 129 
#define  MMAL_ESPIPE 128 
 int MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

int FUNC1(MMAL_STATUS_T status)
{
   if (status == MMAL_SUCCESS)
      return 0;
   else
   {
      switch (status)
      {
      case MMAL_ENOMEM :
         FUNC0("Out of memory");
         break;
      case MMAL_ENOSPC :
         FUNC0("Out of resources (other than memory)");
         break;
      case MMAL_EINVAL:
         FUNC0("Argument is invalid");
         break;
      case MMAL_ENOSYS :
         FUNC0("Function not implemented");
         break;
      case MMAL_ENOENT :
         FUNC0("No such file or directory");
         break;
      case MMAL_ENXIO :
         FUNC0("No such device or address");
         break;
      case MMAL_EIO :
         FUNC0("I/O error");
         break;
      case MMAL_ESPIPE :
         FUNC0("Illegal seek");
         break;
      case MMAL_ECORRUPT :
         FUNC0("Data is corrupt \attention FIXME: not POSIX");
         break;
      case MMAL_ENOTREADY :
         FUNC0("Component is not ready \attention FIXME: not POSIX");
         break;
      case MMAL_ECONFIG :
         FUNC0("Component is not configured \attention FIXME: not POSIX");
         break;
      case MMAL_EISCONN :
         FUNC0("Port is already connected ");
         break;
      case MMAL_ENOTCONN :
         FUNC0("Port is disconnected");
         break;
      case MMAL_EAGAIN :
         FUNC0("Resource temporarily unavailable. Try again later");
         break;
      case MMAL_EFAULT :
         FUNC0("Bad address");
         break;
      default :
         FUNC0("Unknown status error");
         break;
      }

      return 1;
   }
}