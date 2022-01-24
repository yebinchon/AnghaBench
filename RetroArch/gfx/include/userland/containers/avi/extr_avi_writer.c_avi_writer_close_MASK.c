#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_25__ {int /*<<< orphan*/  max_chunk_size; scalar_t__ chunk_offs; int /*<<< orphan*/  chunk_index; } ;
typedef  TYPE_3__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_26__ {unsigned int tracks_num; TYPE_9__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_4__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_28__ {scalar_t__ io; } ;
struct TYPE_27__ {size_t current_track_num; int data_offset; int header_list_offset; struct TYPE_27__* avi_frame_buffer; TYPE_7__ temp_io; TYPE_7__ null_io; scalar_t__ data_size; int /*<<< orphan*/  header_list_size; scalar_t__ index_status; scalar_t__ chunk_data_written; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_29__ {TYPE_2__* priv; } ;
struct TYPE_24__ {TYPE_3__* module; } ;
struct TYPE_23__ {TYPE_5__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,char*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_7__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC15( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   unsigned int i;

   /* If we arent't finished with a chunk we need to finish it first */
   if (module->chunk_data_written)
   {
      VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[module->current_track_num]->priv->module;
      status = FUNC7(p_ctx, module->chunk_data_written);
      if (status != VC_CONTAINER_SUCCESS)
      {
         FUNC0(p_ctx, "warning, writing failed, last chunk truncated");
      }
      FUNC9(p_ctx, module->current_track_num, module->chunk_data_written, 0);
      track_module->chunk_index++;
      track_module->chunk_offs += module->chunk_data_written;
      track_module->max_chunk_size = FUNC1(track_module->max_chunk_size, module->chunk_data_written);
      module->chunk_data_written = 0;
   }

   if(FUNC4(p_ctx))
   {
      uint32_t filesize;

      /* Write standard index data before finalising the size of the 'movi' list */
      status = FUNC11(p_ctx);
      if (status != VC_CONTAINER_SUCCESS)
      {
         module->index_status = status;
         FUNC0(p_ctx, "warning, writing standard index data failed, file will be malformed");
      }

      /* FIXME: support for multiple RIFF chunks (AVIX) */
      module->data_size = FUNC3(p_ctx) - module->data_offset - 8;

      /* Now write the legacy index */
      status = FUNC10(p_ctx);
      if (status != VC_CONTAINER_SUCCESS)
      {
         module->index_status = status;
         FUNC0(p_ctx, "warning, writing legacy index data failed, file will be malformed");
      }

      /* If we can, do the necessary fixups for values not know at the
       time of writing chunk headers */

      /* Rewrite the AVI RIFF chunk size */
      filesize = (uint32_t)FUNC3(p_ctx);
      FUNC2(p_ctx, 4);
      FUNC6(p_ctx, filesize, "fileSize");
      if(FUNC5(p_ctx) != VC_CONTAINER_SUCCESS)
      {
         FUNC0(p_ctx, "warning, rewriting 'fileSize' failed, file will be malformed");
      }

      /* Rewrite the header list chunk ('hdrl') */
      FUNC2(p_ctx, module->header_list_offset);
      status = FUNC8(p_ctx, module->header_list_size);
      if (status != VC_CONTAINER_SUCCESS)
      {
         FUNC0(p_ctx, "warning, rewriting 'hdrl' failed, file will be malformed");
      }

      /* Rewrite the AVI RIFF 'movi' list size */
      FUNC2(p_ctx, module->data_offset + 4);
      FUNC6(p_ctx, module->data_size, "Chunk Size");
      if(FUNC5(p_ctx) != VC_CONTAINER_SUCCESS)
      {
         FUNC0(p_ctx, "warning, rewriting 'movi' list size failed, file will be malformed");
      }
   }

   FUNC14(p_ctx, &module->null_io);
   if(module->temp_io.io) FUNC14(p_ctx, &module->temp_io);

   for(i = 0; i < p_ctx->tracks_num; i++)
      FUNC13(p_ctx, p_ctx->tracks[i]);
   p_ctx->tracks_num = 0;
   p_ctx->tracks = NULL;

   if(module->avi_frame_buffer) FUNC12(module->avi_frame_buffer);
   FUNC12(module);

   return status;
}