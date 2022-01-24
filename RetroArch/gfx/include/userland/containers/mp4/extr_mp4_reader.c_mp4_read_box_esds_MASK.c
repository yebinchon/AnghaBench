#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_25__ {TYPE_4__* format; TYPE_3__* priv; } ;
typedef  TYPE_5__ VC_CONTAINER_TRACK_T ;
struct TYPE_26__ {TYPE_5__** tracks; TYPE_1__* priv; } ;
typedef  TYPE_6__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_27__ {size_t current_track; } ;
typedef  TYPE_7__ VC_CONTAINER_MODULE_T ;
struct TYPE_24__ {int /*<<< orphan*/  extradata; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  bitrate; } ;
struct TYPE_23__ {TYPE_2__* module; } ;
struct TYPE_22__ {void* object_type_indication; } ;
struct TYPE_21__ {TYPE_7__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 void* FUNC2 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC9 (TYPE_6__*,scalar_t__*,int*,int*) ; 
 scalar_t__ FUNC10 (TYPE_6__*,TYPE_5__*,int) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC11( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_TRACK_T *track = p_ctx->tracks[module->current_track];
   VC_CONTAINER_STATUS_T status;
   uint32_t descriptor_length;
   uint8_t descriptor_type;

   FUNC7(p_ctx, "version");
   FUNC5(p_ctx, "flags");

   status = FUNC9(p_ctx, &size, &descriptor_length, &descriptor_type);
   if(status != VC_CONTAINER_SUCCESS) return status;

   if(descriptor_type == 0x3) /* ES descriptor */
   {
      uint8_t flags;

      FUNC4(p_ctx, "es_id");
      flags = FUNC2(p_ctx, "flags");

      if(flags & 0x80) /* Stream dependence */
         FUNC4(p_ctx, "depend_on_es_id");

      if(flags & 0x40) /* URL */
      {
         uint32_t url_size = FUNC2(p_ctx, "url_size");
         FUNC3(p_ctx, url_size, "url");
      }

      if(flags & 0x20) /* OCR_stream*/
         FUNC4(p_ctx, "OCR_es_id");

      status = FUNC9(p_ctx, &size, &descriptor_length, &descriptor_type);
      if(status != VC_CONTAINER_SUCCESS) return status;
   }

   if(descriptor_type == 0x4) /* Decoder Config descriptor */
   {
      track->priv->module->object_type_indication = FUNC2(p_ctx, "object_type_indication");
      FUNC7(p_ctx, "stream_type");
      FUNC5(p_ctx, "buffer_size_db");
      FUNC6(p_ctx, "max_bitrate");
      track->format->bitrate = FUNC1(p_ctx, "avg_bitrate");

      if(size <= 0 || descriptor_length <= 13) return FUNC8(p_ctx);

      status = FUNC9(p_ctx, &size, &descriptor_length, &descriptor_type);
      if(status != VC_CONTAINER_SUCCESS) return status;
      if(descriptor_type == 0x05 && descriptor_length)
      {
         status = FUNC10(p_ctx, track, descriptor_length);
         if(status != VC_CONTAINER_SUCCESS) return status;
         track->format->extradata_size = FUNC0(p_ctx, track->format->extradata, descriptor_length);
      }
   }

   return FUNC8(p_ctx);
}