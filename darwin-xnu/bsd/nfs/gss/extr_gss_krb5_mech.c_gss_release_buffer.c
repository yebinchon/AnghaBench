
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {scalar_t__ length; int * value; } ;


 int FREE (int *,int ) ;
 scalar_t__ GSS_S_COMPLETE ;
 int M_TEMP ;

uint32_t
gss_release_buffer(uint32_t *minor, gss_buffer_t buf)
{
 if (minor)
  *minor = 0;
 if (buf->value)
  FREE(buf->value, M_TEMP);
 buf->value = ((void*)0);
 buf->length = 0;
 return (GSS_S_COMPLETE);
}
