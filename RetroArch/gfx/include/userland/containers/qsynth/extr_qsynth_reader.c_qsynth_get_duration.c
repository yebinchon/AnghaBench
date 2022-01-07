
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
typedef int dummy ;
struct TYPE_16__ {scalar_t__ duration; TYPE_1__* priv; } ;
typedef TYPE_4__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_17__ {TYPE_3__* track; scalar_t__ filesize; scalar_t__ sent; TYPE_6__* seg; TYPE_6__* pass; } ;
typedef TYPE_5__ VC_CONTAINER_MODULE_T ;
struct TYPE_18__ {int* data; struct TYPE_18__* next; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_2__* format; } ;
struct TYPE_14__ {int* extradata; int extradata_size; } ;
struct TYPE_13__ {TYPE_5__* module; } ;
typedef TYPE_6__ QSYNTH_SEGMENT_T ;


 scalar_t__ BI32 (int*) ;
 scalar_t__ HEADER_LENGTH ;
 scalar_t__ MAX_TRACKS ;
 scalar_t__ PEEK_BYTES (TYPE_4__*,int*,scalar_t__) ;
 scalar_t__ READ_BYTES (TYPE_4__*,int*,scalar_t__) ;
 int SKIP_BYTES (TYPE_4__*,scalar_t__) ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 int VC_CONTAINER_SUCCESS ;
 TYPE_6__* malloc (int) ;
 int memcpy (int*,int*,int) ;
 int qsynth_read_header (int*,scalar_t__*,scalar_t__*,int*,int*) ;
 int qsynth_read_track (TYPE_6__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T qsynth_get_duration(VC_CONTAINER_T *p_ctx)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status;
   QSYNTH_SEGMENT_T **seg = &(module->seg);
   uint32_t i, tracks, division = 0, max_ticks = 0, us_perclock = 500000;
   uint32_t end_uspc = 0, end_ticks = 0;
   int64_t end_time = 0;
   uint8_t fps = 1, dpf = 1;

   if((*seg = malloc(sizeof(QSYNTH_SEGMENT_T) + HEADER_LENGTH)) == ((void*)0))
      return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

   (*seg)->next = ((void*)0);
   (*seg)->len = HEADER_LENGTH;
   (*seg)->data = (uint8_t *) ((*seg) + 1);

   if(PEEK_BYTES(p_ctx, (*seg)->data, HEADER_LENGTH) != HEADER_LENGTH)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   if((status = qsynth_read_header((*seg)->data, &tracks, &division, &fps, &dpf)) != VC_CONTAINER_SUCCESS)
      return status;


   if(tracks > MAX_TRACKS)
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   SKIP_BYTES(p_ctx, HEADER_LENGTH);

   seg = &((*seg)->next);
   module->filesize = HEADER_LENGTH;

   if(division == 0)
   {
      us_perclock = 1000000 / (fps * dpf);
      division = 1;
   }

   for(i=0; i<tracks; i++)
   {
      uint32_t len, ticks, tempo_ticks;
      int64_t time;
      uint8_t dummy[8];

      if(READ_BYTES(p_ctx, dummy, sizeof(dummy)) != sizeof(dummy) ||
         dummy[0] != 'M' || dummy[1] != 'T' || dummy[2] != 'r' || dummy[3] != 'k')
         return VC_CONTAINER_ERROR_FORMAT_INVALID;

      len = BI32(dummy+4);


      if(len > (1<<20) || (*seg = malloc(sizeof(QSYNTH_SEGMENT_T) + 8 + len)) == ((void*)0))
         return VC_CONTAINER_ERROR_OUT_OF_MEMORY;

      module->filesize += len+8;
      (*seg)->next = ((void*)0);
      (*seg)->len = len + 8;
      (*seg)->data = (uint8_t *) ((*seg) + 1);

      memcpy((*seg)->data, dummy, 8);
      if(READ_BYTES(p_ctx, (*seg)->data+8, len) != len)
         return VC_CONTAINER_ERROR_FORMAT_INVALID;

      if((status = qsynth_read_track(*seg, &ticks, &time, &us_perclock, &tempo_ticks)) != VC_CONTAINER_SUCCESS)
         return status;

      if(end_uspc == 0)
      {
         end_uspc = us_perclock;
         end_ticks = tempo_ticks;
         end_time = time;
      }

      if(ticks > max_ticks)
         max_ticks = ticks;

      seg = &((*seg)->next);
   }

   if(end_uspc == 0)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   module->pass = module->seg;
   module->sent = 0;
   p_ctx->duration = (end_time + (((int64_t) (max_ticks - end_ticks)) * end_uspc)) / division;
   module->track->format->extradata = (uint8_t *) &module->filesize;
   module->track->format->extradata_size = 4;
   return VC_CONTAINER_SUCCESS;
}
