
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* es; } ;
struct TYPE_7__ {TYPE_1__ format; int extradata_size; int es; int magic; } ;
typedef TYPE_1__ MMAL_ES_FORMAT_T ;
typedef TYPE_2__ MMAL_ES_FORMAT_PRIVATE_T ;


 int EXTRADATA_SIZE_DEFAULT ;
 int MMAL_ES_FORMAT_MAGIC ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* vcos_calloc (int,int,char*) ;

MMAL_ES_FORMAT_T *mmal_format_alloc(void)
{
   MMAL_ES_FORMAT_PRIVATE_T *private;

   private = vcos_calloc(1, sizeof(*private), "mmal format");
   if(!private) return 0;
   memset(private, 0, sizeof(*private));

   private->magic = MMAL_ES_FORMAT_MAGIC;
   private->format.es = (void *)&private->es;
   private->extradata_size = EXTRADATA_SIZE_DEFAULT;

   return &private->format;
}
