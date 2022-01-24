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
typedef  int uint32_t ;
struct TYPE_13__ {TYPE_1__* priv; } ;
typedef  TYPE_3__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_14__ {unsigned int size; long long pts; long long dts; int /*<<< orphan*/  flags; int /*<<< orphan*/ * data; int /*<<< orphan*/  buffer_size; scalar_t__ track; } ;
typedef  TYPE_4__ VC_CONTAINER_PACKET_T ;
struct TYPE_12__ {long long timestamp; } ;
struct TYPE_15__ {int mid_frame; unsigned int frame_read; unsigned int frame_len; int type; TYPE_2__ hdr; } ;
typedef  TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_11__ {TYPE_5__* module; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_PACKET_FLAG_FRAME_END ; 
 int /*<<< orphan*/  VC_CONTAINER_PACKET_FLAG_FRAME_START ; 
 int /*<<< orphan*/  VC_CONTAINER_PACKET_FLAG_KEYFRAME ; 
 int VC_CONTAINER_READ_FLAG_INFO ; 
 int VC_CONTAINER_READ_FLAG_SKIP ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 long long VC_CONTAINER_TIME_UNKNOWN ; 
 unsigned int FUNC2 (TYPE_3__*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC4( VC_CONTAINER_T *p_ctx,
                                              VC_CONTAINER_PACKET_T *packet,
                                              uint32_t flags )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status;
   unsigned int size;

   if(!module->mid_frame)
   {
      if((status = FUNC3(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

      module->mid_frame = 1;
      module->frame_read = 0;
   }

   packet->size = module->frame_len;
   packet->pts = module->type < 3 ? module->hdr.timestamp * 1000LL : VC_CONTAINER_TIME_UNKNOWN;
   packet->dts = packet->pts;
   packet->track = 0;
   packet->flags = module->type < 2 ? VC_CONTAINER_PACKET_FLAG_KEYFRAME : 0;
   if(module->frame_read == 0)
      packet->flags |= VC_CONTAINER_PACKET_FLAG_FRAME_START;

   if(flags & VC_CONTAINER_READ_FLAG_SKIP)
   {
      size = FUNC2(p_ctx, module->frame_len - module->frame_read, NULL);
      if(module->frame_read == module->frame_len)
      {
         module->frame_read = 0;
         module->mid_frame = 0;
      }
      return FUNC1(p_ctx);
   }

   if(flags & VC_CONTAINER_READ_FLAG_INFO)
      return VC_CONTAINER_SUCCESS;

   size = FUNC0(module->frame_len - module->frame_read, packet->buffer_size);
   size = FUNC2(p_ctx, size, packet->data);
   if(module->frame_read == module->frame_len)
   {
      module->frame_read = 0;
      module->mid_frame = 0;
      packet->flags |= VC_CONTAINER_PACKET_FLAG_FRAME_END;
   }
   packet->size = size;

   return size ? VC_CONTAINER_SUCCESS : FUNC1(p_ctx);
}