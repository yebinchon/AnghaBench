
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_qop_t ;
typedef int gss_const_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int GSS_S_FAILURE ;

OM_uint32 gss_wrap(OM_uint32 *min,
                   gss_const_ctx_id_t context_handle,
                   int conf_req_flag,
                   gss_qop_t qop_req,
                   const gss_buffer_t input_message_buffer,
                   int *conf_state,
                   gss_buffer_t output_message_buffer)
{
  (void)min;
  (void)context_handle;
  (void)conf_req_flag;
  (void)qop_req;
  (void)input_message_buffer;
  (void)conf_state;
  (void)output_message_buffer;
  return GSS_S_FAILURE;
}
