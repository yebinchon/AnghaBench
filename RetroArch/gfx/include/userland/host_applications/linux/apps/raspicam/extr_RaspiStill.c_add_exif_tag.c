
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int size; int id; } ;
struct TYPE_8__ {TYPE_4__ hdr; scalar_t__ data; } ;
struct TYPE_7__ {int * output; struct TYPE_7__* encoder_component; } ;
typedef TYPE_1__ RASPISTILL_STATE ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_EXIF_T ;


 int MAX_EXIF_PAYLOAD_LENGTH ;
 int MMAL_EINVAL ;
 int MMAL_PARAMETER_EXIF ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_2__*) ;
 int mmal_port_parameter_set (int ,TYPE_4__*) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int vcos_assert (TYPE_1__*) ;

__attribute__((used)) static MMAL_STATUS_T add_exif_tag(RASPISTILL_STATE *state, const char *exif_tag)
{
   MMAL_STATUS_T status;
   MMAL_PARAMETER_EXIF_T *exif_param = (MMAL_PARAMETER_EXIF_T*)calloc(sizeof(MMAL_PARAMETER_EXIF_T) + MAX_EXIF_PAYLOAD_LENGTH, 1);

   vcos_assert(state);
   vcos_assert(state->encoder_component);


   if (!exif_tag || strchr(exif_tag, '=') == ((void*)0) || strlen(exif_tag) > MAX_EXIF_PAYLOAD_LENGTH-1)
      return MMAL_EINVAL;

   exif_param->hdr.id = MMAL_PARAMETER_EXIF;

   strncpy((char*)exif_param->data, exif_tag, MAX_EXIF_PAYLOAD_LENGTH-1);

   exif_param->hdr.size = sizeof(MMAL_PARAMETER_EXIF_T) + strlen((char*)exif_param->data);

   status = mmal_port_parameter_set(state->encoder_component->output[0], &exif_param->hdr);

   free(exif_param);

   return status;
}
