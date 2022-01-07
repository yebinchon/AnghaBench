
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* format; } ;
typedef TYPE_3__ VC_CONTAINER_TRACK_T ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_13__ {scalar_t__ es_type; TYPE_2__* type; int codec; } ;
typedef TYPE_4__ VC_CONTAINER_ES_FORMAT_T ;
typedef int VC_CONTAINERS_LIST_T ;
struct TYPE_14__ {scalar_t__ es_type; int (* param_handler ) (int *,TYPE_3__*,int const*) ;int codec; int value; int name; } ;
struct TYPE_10__ {int channels; int sample_rate; } ;
struct TYPE_11__ {TYPE_1__ audio; } ;
typedef TYPE_5__ PARAMETER_T ;
typedef TYPE_5__ MIME_TYPE_DATA_T ;


 int MIME_TYPE_NAME ;
 int VC_CONTAINER_ERROR_FORMAT_INVALID ;
 int VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED ;
 scalar_t__ VC_CONTAINER_ES_TYPE_AUDIO ;
 int VC_CONTAINER_SUCCESS ;
 int const dynamic_mime ;
 int stub1 (int *,TYPE_3__*,int const*) ;
 int vc_containers_list_find_entry (int const*,TYPE_5__*) ;
 int vc_containers_list_validate (int const*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T decode_dynamic_type(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      const VC_CONTAINERS_LIST_T *param_list)
{
   VC_CONTAINER_ES_FORMAT_T *format = track->format;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   PARAMETER_T mime_type;
   MIME_TYPE_DATA_T mime_details;


   mime_type.name = MIME_TYPE_NAME;
   if (!vc_containers_list_find_entry(param_list, &mime_type))
      return VC_CONTAINER_ERROR_FORMAT_INVALID;






   mime_details.name = mime_type.value;
   if (!vc_containers_list_find_entry(&dynamic_mime, &mime_details))
      return VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED;

   format->codec = mime_details.codec;
   format->es_type = mime_details.es_type;


   if (mime_details.es_type == VC_CONTAINER_ES_TYPE_AUDIO)
      format->type->audio.channels = 1;


   status = mime_details.param_handler(p_ctx, track, param_list);


   if (mime_details.es_type == VC_CONTAINER_ES_TYPE_AUDIO && !format->type->audio.sample_rate)
      return VC_CONTAINER_ERROR_FORMAT_INVALID;

   return status;
}
