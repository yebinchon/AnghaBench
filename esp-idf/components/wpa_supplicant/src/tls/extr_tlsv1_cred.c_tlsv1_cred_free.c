
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_credentials {struct tlsv1_credentials* dh_g; struct tlsv1_credentials* dh_p; int key; int cert; int trusted_certs; } ;


 int crypto_private_key_free (int ) ;
 int os_free (struct tlsv1_credentials*) ;
 int x509_certificate_chain_free (int ) ;

void tlsv1_cred_free(struct tlsv1_credentials *cred)
{
 if (cred == ((void*)0))
  return;

 x509_certificate_chain_free(cred->trusted_certs);
 x509_certificate_chain_free(cred->cert);
 crypto_private_key_free(cred->key);
 os_free(cred->dh_p);
 os_free(cred->dh_g);
 os_free(cred);
}
