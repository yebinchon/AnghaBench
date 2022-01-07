
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_const_name_t ;
typedef int gss_buffer_t ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 int GSS_S_FAILURE ;

OM_uint32 gss_display_name(OM_uint32 *min,
                           gss_const_name_t input_name,
                           gss_buffer_t output_name_buffer,
                           gss_OID *output_name_type)
{
  (void)min;
  (void)input_name;
  (void)output_name_buffer;
  (void)output_name_type;
  return GSS_S_FAILURE;
}
