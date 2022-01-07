
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef int OM_uint32 ;


 int GSS_S_FAILURE ;

OM_uint32 gss_seal(OM_uint32 *min,
                   gss_ctx_id_t context_handle,
                   int conf_req_flag,
                   int qop_req,
                   gss_buffer_t input_message_buffer,
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
