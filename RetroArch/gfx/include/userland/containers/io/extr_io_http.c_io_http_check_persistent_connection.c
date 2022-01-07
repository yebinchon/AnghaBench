
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ HTTP_HEADER_T ;


 int CONNECTION_NAME ;
 int strcasecmp (int ,char*) ;
 scalar_t__ vc_containers_list_find_entry (int *,TYPE_1__*) ;

__attribute__((used)) static bool io_http_check_persistent_connection(VC_CONTAINERS_LIST_T *header_list)
{
   HTTP_HEADER_T header;

   header.name = CONNECTION_NAME;
   if (header_list && vc_containers_list_find_entry(header_list, &header))
   {

      if (!strcasecmp(header.value, "close"))
         return 0;
   }

   return 1;
}
