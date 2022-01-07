
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GSS_KRB5_INITIALIZED ;
 int GSS_KRB5_INITIALIZING ;
 int GSS_KRB5_NOT_INITIALIZED ;
 int LCK_GRP_ATTR_NULL ;
 int OSCompareAndSwap (int ,int ,scalar_t__*) ;
 int gss_krb5_mech_grp ;
 scalar_t__ gss_krb5_mech_initted ;
 int gss_krb5_mech_is_initialized () ;
 int lck_grp_alloc_init (char*,int ) ;

void
gss_krb5_mech_init(void)
{
 extern void IOSleep(int);


 if (gss_krb5_mech_initted == GSS_KRB5_INITIALIZED)
  return;


 if (!OSCompareAndSwap(GSS_KRB5_NOT_INITIALIZED, GSS_KRB5_INITIALIZING, &gss_krb5_mech_initted)) {

  while (!gss_krb5_mech_is_initialized())
   IOSleep(10);
  return;
 }
 gss_krb5_mech_grp = lck_grp_alloc_init("gss_krb5_mech", LCK_GRP_ATTR_NULL);
 gss_krb5_mech_initted = GSS_KRB5_INITIALIZED;
}
