
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_const_ctx_id_t ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 int GSS_S_FAILURE ;

OM_uint32 gss_inquire_context(OM_uint32 *min,
                              gss_const_ctx_id_t context_handle,
                              gss_name_t *src_name,
                              gss_name_t *targ_name,
                              OM_uint32 *lifetime_rec,
                              gss_OID *mech_type,
                              OM_uint32 *ctx_flags,
                              int *locally_initiated,
                              int *open_context)
{
  (void)min;
  (void)context_handle;
  (void)src_name;
  (void)targ_name;
  (void)lifetime_rec;
  (void)mech_type;
  (void)ctx_flags;
  (void)locally_initiated;
  (void)open_context;
  return GSS_S_FAILURE;
}
