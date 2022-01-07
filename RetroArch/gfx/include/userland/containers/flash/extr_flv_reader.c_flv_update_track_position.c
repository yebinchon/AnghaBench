
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* int64_t ;
struct TYPE_10__ {TYPE_3__* state; } ;
typedef TYPE_4__ VC_CONTAINER_TRACK_MODULE_T ;
struct TYPE_11__ {TYPE_2__** tracks; } ;
typedef TYPE_5__ VC_CONTAINER_T ;
struct TYPE_9__ {int tag_prev_size; int data_size; int flags; int track; int timestamp; scalar_t__ data_offset; void* data_position; void* tag_position; } ;
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_4__* module; } ;



__attribute__((used)) static void flv_update_track_position(VC_CONTAINER_T *p_ctx, int track,
   int64_t tag_position, int tag_prev_size, int64_t data_position,
   int data_size, uint32_t timestamp, int flags)
{
   VC_CONTAINER_TRACK_MODULE_T *track_module = p_ctx->tracks[track]->priv->module;
   track_module->state->tag_position = tag_position;
   track_module->state->tag_prev_size = tag_prev_size;
   track_module->state->data_position = data_position;
   track_module->state->data_size = data_size;
   track_module->state->data_offset = 0;
   track_module->state->timestamp = timestamp;
   track_module->state->flags = flags;
   track_module->state->track = track;
}
