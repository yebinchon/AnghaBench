#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {scalar_t__ size; scalar_t__ status; TYPE_2__* module; } ;
typedef  TYPE_1__ VC_CONTAINER_IO_T ;
struct TYPE_10__ {scalar_t__ cur_offset; int reconnecting; int /*<<< orphan*/  persistent; int /*<<< orphan*/  header_list; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_MODULE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ; 
 scalar_t__ VC_CONTAINER_ERROR_EOS ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 size_t FUNC5 (TYPE_1__*,char*,size_t) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,size_t) ; 

__attribute__((used)) static size_t FUNC8(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_IO_MODULE_T *module = p_ctx->module;
   size_t content_length;
   size_t bytes_read;
   size_t ret = 0;
   char *ptr = buffer;

   /*
    * Are we at the end of the file?
    */

   if (module->cur_offset >= p_ctx->size)
   {
      p_ctx->status = VC_CONTAINER_ERROR_EOS;
      return 0;
   }

   if (!module->persistent)
   {
      status = FUNC4(p_ctx);
      if (status != VC_CONTAINER_SUCCESS)
      {
         FUNC1(NULL, "Error opening socket for GET request");
         return status;
      }
   }

   /* Send GET request and get response */
   status = FUNC7(p_ctx, size);
   if (status != VC_CONTAINER_SUCCESS)
   {
      FUNC1(NULL, "Error sending GET request");
      goto error;
   }

   status = FUNC6(p_ctx);
   if (status == VC_CONTAINER_ERROR_EOS && !module->reconnecting)
   {
      FUNC0(NULL, "reconnecting");
      FUNC2(module);
      status = FUNC4(p_ctx);
      if (status == VC_CONTAINER_SUCCESS)
      {
         module->reconnecting = true;
         status = FUNC8(p_ctx, buffer, size);
         module->reconnecting = false;
         return status;
      }
   }
   if (status != VC_CONTAINER_SUCCESS)
   {
      FUNC1(NULL, "Error reading GET response");
      goto error;
   }

   /*
    * How much data is the server offering us?
    */

   content_length = (size_t)FUNC3(module->header_list);
   if (content_length > size)
   {
      FUNC1(NULL, "received too much data (%i/%i)",
                (int)content_length, (int)size);
      status = VC_CONTAINER_ERROR_CORRUPTED;
      goto error;
   }

   bytes_read = 0;
   while (bytes_read < content_length && p_ctx->status == VC_CONTAINER_SUCCESS)
   {
      ret = FUNC5(p_ctx, ptr, content_length - bytes_read);
      if (p_ctx->status == VC_CONTAINER_SUCCESS)
      {
         bytes_read += ret;
         ptr += ret;
      }
   }

   if (p_ctx->status == VC_CONTAINER_SUCCESS)
   {
      module->cur_offset += bytes_read;
      ret = bytes_read;
   }

   if (!module->persistent)
      FUNC2(module);

   return ret;

error:
   if (!module->persistent)
      FUNC2(module);

   return status;
}