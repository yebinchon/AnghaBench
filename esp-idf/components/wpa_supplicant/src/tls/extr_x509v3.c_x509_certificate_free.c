
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {struct x509_certificate* sign_value; struct x509_certificate* public_key; int subject; int issuer; scalar_t__ next; } ;


 int MSG_DEBUG ;
 int os_free (struct x509_certificate*) ;
 int wpa_printf (int ,char*,struct x509_certificate*,scalar_t__) ;
 int x509_free_name (int *) ;

void x509_certificate_free(struct x509_certificate *cert)
{
 if (cert == ((void*)0))
  return;
 if (cert->next) {
  wpa_printf(MSG_DEBUG, "X509: x509_certificate_free: cer=%p "
      "was still on a list (next=%p)\n",
      cert, cert->next);
 }
 x509_free_name(&cert->issuer);
 x509_free_name(&cert->subject);
 os_free(cert->public_key);
 os_free(cert->sign_value);
 os_free(cert);
}
