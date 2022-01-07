
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_3__ {char const* value; int name; } ;
typedef TYPE_1__ RTSP_HEADER_T ;


 int SESSION_NAME ;
 scalar_t__ vc_containers_list_find_entry (int *,TYPE_1__*) ;

__attribute__((used)) static const char *rtsp_get_session_header(VC_CONTAINERS_LIST_T *header_list)
{
   RTSP_HEADER_T header;

   header.name = SESSION_NAME;
   if (header_list && vc_containers_list_find_entry(header_list, &header))
      return header.value;

   return "";
}
