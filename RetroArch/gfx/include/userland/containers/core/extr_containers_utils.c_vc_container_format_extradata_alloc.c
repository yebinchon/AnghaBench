
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_CONTAINER_STATUS_T ;
typedef int VC_CONTAINER_ES_FORMAT_T ;
struct TYPE_3__ {scalar_t__ extradata; } ;
struct TYPE_4__ {scalar_t__ magic; unsigned int extradata_size; scalar_t__ buffer; TYPE_1__ format; scalar_t__ extradata; } ;
typedef TYPE_2__ VC_CONTAINER_ES_FORMAT_PRIVATE_T ;


 unsigned int EXTRADATA_SIZE_MAX ;
 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_ERROR_OUT_OF_MEMORY ;
 scalar_t__ VC_CONTAINER_ES_FORMAT_MAGIC ;
 int VC_CONTAINER_SUCCESS ;
 int free (scalar_t__) ;
 scalar_t__ malloc (unsigned int) ;
 int vc_container_assert (int) ;

VC_CONTAINER_STATUS_T vc_container_format_extradata_alloc(
   VC_CONTAINER_ES_FORMAT_T *format, unsigned int size)
{
   VC_CONTAINER_ES_FORMAT_PRIVATE_T *private = (VC_CONTAINER_ES_FORMAT_PRIVATE_T *)format;
   vc_container_assert(private->magic == VC_CONTAINER_ES_FORMAT_MAGIC);


   if(size > EXTRADATA_SIZE_MAX)
      return VC_CONTAINER_ERROR_CORRUPTED;


   if(private->extradata_size < size)
   {
      if(private->extradata) free(private->extradata);
      private->extradata = malloc(size);
      if(!private->extradata)
         return VC_CONTAINER_ERROR_OUT_OF_MEMORY;
      private->extradata_size = size;
   }


   if(private->extradata) private->format.extradata = private->extradata;
   else private->format.extradata = private->buffer;

   return VC_CONTAINER_SUCCESS;
}
