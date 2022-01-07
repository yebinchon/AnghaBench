
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int string; } ;
typedef TYPE_1__ string_pair_t ;
typedef int MMAL_STATUS_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 scalar_t__ vcos_strcasecmp (char const*,int ) ;

__attribute__((used)) static MMAL_STATUS_T parse_enum(int *dest, string_pair_t *pairs, size_t n_pairs, const char *str)
{
   size_t i;
   for (i=0; i<n_pairs; i++)
   {
      if (vcos_strcasecmp(str, pairs[i].string) == 0)
      {
         *dest = pairs[i].value;
         return MMAL_SUCCESS;
      }
   }
   return MMAL_EINVAL;
}
