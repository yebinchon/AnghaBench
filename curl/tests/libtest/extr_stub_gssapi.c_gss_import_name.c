
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gss_name_t ;
typedef TYPE_1__* gss_buffer_t ;
typedef int gss_OID ;
struct TYPE_3__ {int length; int value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_INVALID_ARGS ;
 scalar_t__ GSS_NO_MEMORY ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 char* strndup (int ,int ) ;

OM_uint32 gss_import_name(OM_uint32 *min,
                          const gss_buffer_t input_name_buffer,
                          const gss_OID input_name_type,
                          gss_name_t *output_name)
{
  char *name = ((void*)0);
  (void)input_name_type;

  if(!min)
    return GSS_S_FAILURE;

  if(!input_name_buffer || !output_name) {
    *min = GSS_INVALID_ARGS;
    return GSS_S_FAILURE;
  }

  name = strndup(input_name_buffer->value, input_name_buffer->length);
  if(!name) {
    *min = GSS_NO_MEMORY;
    return GSS_S_FAILURE;
  }

  *output_name = (gss_name_t) name;
  *min = 0;

  return GSS_S_COMPLETE;
}
