
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {scalar_t__ length; int value; } ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int free (int ) ;

OM_uint32 gss_release_buffer(OM_uint32 *min,
                             gss_buffer_t buffer)
{
  if(min)
    *min = 0;

  if(buffer && buffer->length) {
    free(buffer->value);
    buffer->length = 0;
  }

  return GSS_S_COMPLETE;
}
