
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* str; scalar_t__ status; } ;
typedef scalar_t__ MMAL_STATUS_T ;


 TYPE_1__* status_to_string_map ;

const char *mmal_status_to_string(MMAL_STATUS_T status)
{
   unsigned i;

   for (i=0; status_to_string_map[i].str; i++)
      if (status_to_string_map[i].status == status)
         break;

   return status_to_string_map[i].str ? status_to_string_map[i].str : "UNKNOWN";
}
