
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int free (int ) ;

OM_uint32 gss_release_name(OM_uint32 *min,
                           gss_name_t *input_name)
{
  if(min)
    *min = 0;

  if(input_name)
    free(*input_name);

  return GSS_S_COMPLETE;
}
