
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GSS_KRB5_NOT_INITIALIZED ;
 scalar_t__ gss_krb5_mech_initted ;

int
gss_krb5_mech_is_initialized(void)
{
 return (gss_krb5_mech_initted == GSS_KRB5_NOT_INITIALIZED);
}
