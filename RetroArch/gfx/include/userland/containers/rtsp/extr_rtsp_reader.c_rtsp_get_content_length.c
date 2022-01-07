
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ RTSP_HEADER_T ;


 int CONTENT_LENGTH_NAME ;
 int sscanf (int ,char*,unsigned int*) ;
 scalar_t__ vc_containers_list_find_entry (int *,TYPE_1__*) ;

__attribute__((used)) static uint32_t rtsp_get_content_length( VC_CONTAINERS_LIST_T *header_list )
{
   unsigned int content_length = 0;
   RTSP_HEADER_T header;

   header.name = CONTENT_LENGTH_NAME;
   if (header_list && vc_containers_list_find_entry(header_list, &header))

      sscanf(header.value, "%u", &content_length);

   return content_length;
}
