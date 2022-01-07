
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int ntlm; int krb5; } ;


 int Curl_auth_cleanup_gssapi (int *) ;
 int Curl_auth_cleanup_ntlm (int *) ;
 unsigned int SASL_MECH_GSSAPI ;
 unsigned int SASL_MECH_NTLM ;

void Curl_sasl_cleanup(struct connectdata *conn, unsigned int authused)
{
  (void)conn;
  (void)authused;

}
