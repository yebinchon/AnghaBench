
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;

void FreePKey(EVP_PKEY *pkey)
{

 if (pkey == ((void*)0))
 {
  return;
 }

 EVP_PKEY_free(pkey);
}
