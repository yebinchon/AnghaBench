
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_4__ {unsigned int extradata_size; int * extradata; int * type; } ;
typedef TYPE_1__ VC_CONTAINER_ES_FORMAT_T ;


 int VC_CONTAINER_ERROR_BUFFER_TOO_SMALL ;
 int VC_CONTAINER_SUCCESS ;
 int memcpy (int *,int *,int) ;

VC_CONTAINER_STATUS_T vc_container_format_copy( VC_CONTAINER_ES_FORMAT_T *p_out,
                                                VC_CONTAINER_ES_FORMAT_T *p_in,
                                                unsigned int extra_buffer_size)
{
   void *type = p_out->type;
   uint8_t *extradata = p_out->extradata;


   if(p_in->extradata_size > extra_buffer_size ||
      (p_in->extradata_size && !p_out->extradata))
      return VC_CONTAINER_ERROR_BUFFER_TOO_SMALL;

   *p_out->type = *p_in->type;
   *p_out = *p_in;
   p_out->type = type;
   p_out->extradata = extradata;
   if(p_in->extradata_size)
      memcpy(p_out->extradata, p_in->extradata, p_in->extradata_size);

   return VC_CONTAINER_SUCCESS;
}
