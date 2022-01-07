
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; struct TYPE_3__* extradata; } ;
typedef int MMAL_ES_FORMAT_T ;
typedef TYPE_1__ MMAL_ES_FORMAT_PRIVATE_T ;


 scalar_t__ MMAL_ES_FORMAT_MAGIC ;
 int vcos_assert (int) ;
 int vcos_free (TYPE_1__*) ;

void mmal_format_free(MMAL_ES_FORMAT_T *format)
{
   MMAL_ES_FORMAT_PRIVATE_T *private = (MMAL_ES_FORMAT_PRIVATE_T *)format;
   vcos_assert(private->magic == MMAL_ES_FORMAT_MAGIC);
   if(private->extradata) vcos_free(private->extradata);
   vcos_free(private);
}
