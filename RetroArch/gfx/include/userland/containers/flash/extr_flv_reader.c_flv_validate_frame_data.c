
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
struct TYPE_9__ {TYPE_2__** tracks; scalar_t__ tracks_num; } ;
typedef TYPE_3__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_8__ {TYPE_1__* format; } ;
struct TYPE_7__ {int codec; } ;





 int VC_CONTAINER_ERROR_CONTINUE ;
 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_SUCCESS ;
 int _READ_U24 (TYPE_3__*) ;
 int _READ_U8 (TYPE_3__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T flv_validate_frame_data(VC_CONTAINER_T *p_ctx,
   int track, int *p_size, uint32_t *p_timestamp)
{
   int32_t time_offset;

   if(track >= (int)p_ctx->tracks_num)
      return *p_size ? VC_CONTAINER_SUCCESS : VC_CONTAINER_ERROR_CONTINUE;

   switch(p_ctx->tracks[track]->format->codec)
   {
   case 128:
      if(*p_size < 1) return VC_CONTAINER_ERROR_CORRUPTED;
      _READ_U8(p_ctx); *p_size -= 1;
      break;
   case 129:
      if(*p_size < 1) return VC_CONTAINER_ERROR_CORRUPTED;
      *p_size -= 1;
      if(_READ_U8(p_ctx)!=1) return VC_CONTAINER_ERROR_CONTINUE;
      break;
   case 130:
      if(*p_size < 4) return VC_CONTAINER_ERROR_CORRUPTED;
      *p_size -= 1;
      if(_READ_U8(p_ctx)!=1) return VC_CONTAINER_ERROR_CONTINUE;
      time_offset = _READ_U24(p_ctx);
      time_offset <<= 8; time_offset >>= 8;
      *p_timestamp += time_offset;
      *p_size -= 3;
      break;
   default:
      break;
   }

   return *p_size ? VC_CONTAINER_SUCCESS : VC_CONTAINER_ERROR_CONTINUE;
}
