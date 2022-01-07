
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int EXTENDED_KEY_USAGE ;


 int ASN1_OBJECT_free ;
 int AddKeyUsageX509 (int *,int ) ;
 int NID_OCSP_sign ;
 int NID_client_auth ;
 int NID_code_sign ;
 int NID_email_protect ;
 int NID_ext_key_usage ;
 int NID_ipsecEndSystem ;
 int NID_ipsecTunnel ;
 int NID_ipsecUser ;
 int NID_server_auth ;
 int NID_time_stamp ;
 int * X509V3_EXT_i2d (int ,int ,int *) ;
 int * sk_ASN1_OBJECT_new_null () ;
 int sk_ASN1_OBJECT_pop_free (int *,int ) ;

X509_EXTENSION *NewExtendedKeyUsageForX509()
{
 EXTENDED_KEY_USAGE *ex = sk_ASN1_OBJECT_new_null();
 X509_EXTENSION *ret;

 AddKeyUsageX509(ex, NID_server_auth);
 AddKeyUsageX509(ex, NID_client_auth);
 AddKeyUsageX509(ex, NID_code_sign);
 AddKeyUsageX509(ex, NID_email_protect);
 AddKeyUsageX509(ex, NID_ipsecEndSystem);
 AddKeyUsageX509(ex, NID_ipsecTunnel);
 AddKeyUsageX509(ex, NID_ipsecUser);
 AddKeyUsageX509(ex, NID_time_stamp);
 AddKeyUsageX509(ex, NID_OCSP_sign);

 ret = X509V3_EXT_i2d(NID_ext_key_usage, 0, ex);

 sk_ASN1_OBJECT_pop_free(ex, ASN1_OBJECT_free);

 return ret;
}
