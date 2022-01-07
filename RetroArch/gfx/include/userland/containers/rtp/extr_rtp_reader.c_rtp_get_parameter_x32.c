
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_3__ {char const* name; char* value; } ;
typedef TYPE_1__ PARAMETER_T ;


 int strtoul (char*,char**,int) ;
 scalar_t__ vc_containers_list_find_entry (int const*,TYPE_1__*) ;

bool rtp_get_parameter_x32(const VC_CONTAINERS_LIST_T *param_list,
      const char *name,
      uint32_t *value)
{
   PARAMETER_T param;

   param.name = name;
   if (vc_containers_list_find_entry(param_list, &param) && param.value)
   {
      char *end;

      *value = strtoul(param.value, &end, 16);
      return (end != param.value) && (*end == '\0');
   }

   return 0;
}
