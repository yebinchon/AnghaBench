#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  endstr ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_7__ {int /*<<< orphan*/  status; TYPE_2__* module; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_8__ {char* comms_buffer; int /*<<< orphan*/  header_list; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_MODULE_T ;
struct TYPE_9__ {char* name; char* value; } ;
typedef  TYPE_3__ HTTP_HEADER_T ;

/* Variables and functions */
 scalar_t__ ENABLE_HTTP_EXTRA_LOGGING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_OUT_OF_MEMORY ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7(VC_CONTAINER_IO_T *p_ctx)
{
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   char *next_read = module->comms_buffer;
   size_t space_available = sizeof(module->comms_buffer) - 1; /* Allow for a NUL */
   char *ptr = next_read;
   bool end_response = false;
   HTTP_HEADER_T header;
   const char endstr[] = "\r\n\r\n";
   int endcount = sizeof(endstr) - 1;
   int endchk = 0;

   FUNC6(module->header_list);

   /* Response status line doesn't need to be stored, just checked */
   header.name = NULL;
   header.value = next_read;

   /*
    * We need to read just a byte at a time to make sure that we just read the HTTP response and
    * no more. For example, if a GET operation was requested the file being fetched will also
    * be waiting to be read on the socket.
    */

   while (space_available)
   {
      if (FUNC2(p_ctx, next_read, 1) != 1)
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
      FUNC1(NULL, "comms buffer too small for complete HTTP message (%d)",
                sizeof(module->comms_buffer));
      return VC_CONTAINER_ERROR_CORRUPTED;
   }

   *next_read = '\0';

   if (endchk == endcount)
   {
      if (ENABLE_HTTP_EXTRA_LOGGING)
         FUNC0(NULL, "READ FROM SERVER: %d bytes\n%s\n-----------------------------------------",
                   sizeof(module->comms_buffer) - 1 - space_available, module->comms_buffer);

      while (!end_response && ptr < next_read)
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
                  header.value = FUNC4(header.value);
                  if (header.name)
                  {
                     if (!FUNC5(module->header_list, &header, false))
                     {
                        FUNC1(NULL, "HTTP: Failed to add <%s> header to list", header.name);
                        return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
                     }
                  } else {
                     /* Check response status line */
                     if (!FUNC3(header.value))
                        return VC_CONTAINER_ERROR_FORMAT_INVALID;
                  }
                  /* Ready for next header */
                  header.name  = ptr;
                  header.value = NULL;
               } else {
                  /* End of line while parsing the name of a header */
                  *ptr++ = '\0';
                  if (*header.name && *header.name != '\r')
                  {
                     /* A non-empty name is invalid, so fail */
                     FUNC1(NULL, "HTTP: Invalid name in header - no colon:\n%s", header.name);
                     return VC_CONTAINER_ERROR_FORMAT_INVALID;
                  }

                  /* An empty name signifies the end of the HTTP response */
                  end_response = true;
               }
               break;

            default:
               /* Just another character in either the name or the value */
               ptr++;
         }
      }
   }

   if (!space_available && !end_response)
   {
      /* Ran out of buffer space */
      FUNC1(NULL, "HTTP: Response header section too big");
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }

   return p_ctx->status;
}