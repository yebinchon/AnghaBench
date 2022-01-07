
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS12 ;


 int PKCS12_free (int *) ;

void FreePKCS12(PKCS12 *pkcs12)
{

 if (pkcs12 == ((void*)0))
 {
  return;
 }

 PKCS12_free(pkcs12);
}
