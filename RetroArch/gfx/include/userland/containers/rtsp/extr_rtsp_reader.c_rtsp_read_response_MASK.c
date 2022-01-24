#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {char* comms_buffer; int /*<<< orphan*/  header_list; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_14__ {scalar_t__ status; } ;
typedef  TYPE_4__ VC_CONTAINER_IO_T ;
struct TYPE_15__ {char* name; char* value; } ;
struct TYPE_11__ {TYPE_4__* io; TYPE_3__* module; } ;
typedef  TYPE_5__ RTSP_HEADER_T ;

/* Variables and functions */
 scalar_t__ COMMS_BUFFER_SIZE ; 
 char* CONTENT_PSEUDOHEADER_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 scalar_t__ VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 scalar_t__ VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_IO_T *p_ctx_io = p_ctx->priv->io;
   char *next_read = module->comms_buffer;
   uint32_t space_available = COMMS_BUFFER_SIZE - 1;     /* Allow for a NUL */
   uint32_t received;
   char *ptr = next_read;
   bool found_content = false;
   RTSP_HEADER_T header;

   FUNC6(module->header_list);

   /* Response status line doesn't need to be stored, just checked */
   header.name = NULL;
   header.value = next_read;

   while (space_available)
   {
      received = FUNC4(p_ctx_io, next_read, space_available);
      if (p_ctx_io->status != VC_CONTAINER_SUCCESS)
         break;

      next_read += received;
      space_available -= received;

      while (!found_content && ptr < next_read)
      {
         switch (*ptr)
         {
         case ':':
            if (header.value)
            {
               /* Just another character in the value */
               ptr++;
            } else {
               /* End of name, expect value next */
               *ptr++ = '\0';
               header.value = ptr;
            }
            break;

         case '\n':
            if (header.value)
            {
               /* End of line while parsing the value part of the header, add name/value pair to list */
               *ptr++ = '\0';
               header.value = FUNC3(header.value);
               if (header.name)
               {
                  if (!FUNC5(module->header_list, &header, false))
                  {
                     FUNC0(p_ctx, "RTSP: Failed to add <%s> header to list", header.name);
                     return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
                  }
               } else {
                  /* Check response status line */
                  if (!FUNC2(p_ctx, header.value))
                     return VC_CONTAINER_ERROR_FORMAT_INVALID;
               }
               /* Ready for next header */
               header.name = ptr;
               header.value = NULL;
            } else {
               uint32_t content_length;

               /* End of line while parsing the name of a header */
               *ptr++ = '\0';
               if (*header.name && *header.name != '\r')
               {
                  /* A non-empty name is invalid, so fail */
                  FUNC0(p_ctx, "RTSP: Invalid name in header - no colon:\n%s", header.name);
                  return VC_CONTAINER_ERROR_FORMAT_INVALID;
               }

               /* An empty name signifies the start of the content has been found */
               found_content = true;

               /* Make a pseudo-header for the content and add it to the list */
               header.name = CONTENT_PSEUDOHEADER_NAME;
               header.value = ptr;
               if (!FUNC5(module->header_list, &header, false))
               {
                  FUNC0(p_ctx, "RTSP: Failed to add content pseudoheader to list");
                  return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
               }

               /* Calculate how much content there is left to read, based on Content-Length header */
               content_length = FUNC1(module->header_list);
               if (ptr + content_length < next_read)
               {
                  /* Final content byte already present, with extra data after it */
                  space_available = 0;
               } else {
                  uint32_t content_to_read = content_length - (next_read - ptr);

                  if (content_to_read >= space_available)
                  {
                     FUNC0(p_ctx, "RTSP: Not enough room to read content");
                     return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
                  }

                  /* Restrict further reading to the number of content bytes left */
                  space_available = content_to_read;
               }
            }
            break;

         default:
            /* Just another character in either the name or the value */
            ptr++;
         }
      }
   }

   if (!space_available)
   {
      if (found_content)
      {
         /* Terminate content region */
         *next_read = '\0';
      } else {
         /* Ran out of buffer space and never found the content */
         FUNC0(p_ctx, "RTSP: Response header section too big / content missing");
         return VC_CONTAINER_ERROR_FORMAT_INVALID;
      }
   }

   return p_ctx_io->status;
}