
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int endstr ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_7__ {int status; TYPE_2__* module; } ;
typedef TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_8__ {char* comms_buffer; int header_list; } ;
typedef TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
struct TYPE_9__ {char* name; char* value; } ;
typedef TYPE_3__ HTTP_HEADER_T ;


 scalar_t__ ENABLE_HTTP_EXTRA_LOGGING ;
 int LOG_DEBUG (int *,char*,int,char*) ;
 int LOG_ERROR (int *,char*,...) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int io_http_read_from_net (TYPE_1__*,char*,int) ;
 int io_http_successful_response_status (char*) ;
 char* io_http_trim (char*) ;
 int vc_containers_list_insert (int ,TYPE_3__*,int) ;
 int vc_containers_list_reset (int ) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T io_http_read_response(VC_CONTAINER_IO_T *p_ctx)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   char *next_read = module->comms_buffer;
   size_t space_available = sizeof(module->comms_buffer) - 1;
   char *ptr = next_read;
   bool end_response = 0;
   HTTP_HEADER_T header;
   const char endstr[] = "\r\n\r\n";
   int endcount = sizeof(endstr) - 1;
   int endchk = 0;

   vc_containers_list_reset(module->header_list);


   header.name = ((void*)0);
   header.value = next_read;







   while (space_available)
   {
      if (io_http_read_from_net(p_ctx, next_read, 1) != 1)
         break;

      next_read++;
      space_available--;

      if (next_read[-1] == endstr[endchk])
      {
         if (++endchk == endcount)
            break;
      }
      else
         endchk = 0;
   }
   if (!space_available)
   {
      LOG_ERROR(((void*)0), "comms buffer too small for complete HTTP message (%d)",
                sizeof(module->comms_buffer));
      return VC_CONTAINER_ERROR_CORRUPTED;
   }

   *next_read = '\0';

   if (endchk == endcount)
   {
      if (ENABLE_HTTP_EXTRA_LOGGING)
         LOG_DEBUG(((void*)0), "READ FROM SERVER: %d bytes\n%s\n-----------------------------------------",
                   sizeof(module->comms_buffer) - 1 - space_available, module->comms_buffer);

      while (!end_response && ptr < next_read)
      {
         switch (*ptr)
         {
            case ':':
               if (header.value)
               {

                  ptr++;
               } else {

                  *ptr++ = '\0';
                  header.value = ptr;
               }
               break;

            case '\n':
               if (header.value)
               {

                  *ptr++ = '\0';
                  header.value = io_http_trim(header.value);
                  if (header.name)
                  {
                     if (!vc_containers_list_insert(module->header_list, &header, 0))
                     {
                        LOG_ERROR(((void*)0), "HTTP: Failed to add <%s> header to list", header.name);
                        return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
                     }
                  } else {

                     if (!io_http_successful_response_status(header.value))
                        return VC_CONTAINER_ERROR_FORMAT_INVALID;
                  }

                  header.name = ptr;
                  header.value = ((void*)0);
               } else {

                  *ptr++ = '\0';
                  if (*header.name && *header.name != '\r')
                  {

                     LOG_ERROR(((void*)0), "HTTP: Invalid name in header - no colon:\n%s", header.name);
                     return VC_CONTAINER_ERROR_FORMAT_INVALID;
                  }


                  end_response = 1;
               }
               break;

            default:

               ptr++;
         }
      }
   }

   if (!space_available && !end_response)
   {

      LOG_ERROR(((void*)0), "HTTP: Response header section too big");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   return p_ctx->status;
}
