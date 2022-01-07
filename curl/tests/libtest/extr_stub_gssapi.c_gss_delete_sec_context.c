
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gss_ctx_id_t ;
typedef int gss_buffer_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_INVALID_CTX ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int free (int *) ;

OM_uint32 gss_delete_sec_context(OM_uint32 *min,
                                 gss_ctx_id_t *context_handle,
                                 gss_buffer_t output_token)
{
  (void)output_token;

  if(!min)
    return GSS_S_FAILURE;

  if(!context_handle) {
    *min = GSS_INVALID_CTX;
    return GSS_S_FAILURE;
  }

  free(*context_handle);
  *context_handle = ((void*)0);
  *min = 0;

  return GSS_S_COMPLETE;
}
