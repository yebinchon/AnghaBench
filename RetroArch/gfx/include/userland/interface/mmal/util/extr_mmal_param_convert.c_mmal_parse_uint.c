
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 unsigned long strtoul (char const*,char**,int ) ;

MMAL_STATUS_T mmal_parse_uint(unsigned int *dest, const char *str)
{
   char *endptr;
   unsigned long i = strtoul(str, &endptr, 0);
   if (endptr[0] == '\0')
   {
      *dest = i;
      return MMAL_SUCCESS;
   }
   else
   {
      return MMAL_EINVAL;
   }
}
