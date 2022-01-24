#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_15__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_14__ {int /*<<< orphan*/  pf_close; TYPE_1__* io; } ;
struct TYPE_13__ {scalar_t__ size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  id3_metadata_reader_close ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

VC_CONTAINER_STATUS_T FUNC9( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_ERROR_FORMAT_INVALID;
   uint8_t peek_buf[10];
   int64_t data_offset;

   if (FUNC2(p_ctx, peek_buf, 10) != 10)
     return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   /* Initial ID3v2 tag(s), variable size */
   while ((peek_buf[0] == 'I') && (peek_buf[1] == 'D') && (peek_buf[2] == '3'))
   {
      if ((status = FUNC8(p_ctx)) != VC_CONTAINER_SUCCESS)
      {
         FUNC1(p_ctx, "error reading ID3v2 tag (%i)", status);
      }

      if (FUNC2(p_ctx, peek_buf, 10) != 10) break;
   }

   data_offset = FUNC4(p_ctx);

   /* ID3v1 tag, 128 bytes at the end of a file */
   if (p_ctx->priv->io->size >= FUNC0(128) && FUNC5(p_ctx))
   {
      FUNC3(p_ctx, p_ctx->priv->io->size - FUNC0(128));
      if (FUNC2(p_ctx, peek_buf, 3) != 3) goto end;

      if ((peek_buf[0] == 'T') && (peek_buf[1] == 'A') && (peek_buf[2] == 'G'))
      {
         if ((status = FUNC7(p_ctx)) != VC_CONTAINER_SUCCESS)
         {
            FUNC1(p_ctx, "error reading ID3v1 tag (%i)", status);
         }
      }
   }

end:
   /* Restore position to start of data */
   if (FUNC4(p_ctx) != data_offset)
      FUNC3(p_ctx, data_offset);

   p_ctx->priv->pf_close = id3_metadata_reader_close;

   if((status = FUNC6(p_ctx)) != VC_CONTAINER_SUCCESS) goto error;

   return VC_CONTAINER_SUCCESS;

error:
   FUNC1(p_ctx, "error opening stream (%i)", status);
   return status;
}