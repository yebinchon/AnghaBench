
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 long strtol (char const*,char**,int ) ;

MMAL_STATUS_T mmal_parse_int(int *dest, const char *str)
{
   char *endptr;
   long i = strtol(str, &endptr, 0);
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
