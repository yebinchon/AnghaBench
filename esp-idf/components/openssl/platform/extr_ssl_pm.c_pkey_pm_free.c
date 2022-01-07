
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pkey_pm {int * pkey; } ;
struct TYPE_3__ {int * pkey_pm; } ;
typedef TYPE_1__ EVP_PKEY ;


 int mbedtls_pk_free (int *) ;
 int ssl_mem_free (int *) ;

void pkey_pm_free(EVP_PKEY *pk)
{
    struct pkey_pm *pkey_pm = (struct pkey_pm *)pk->pkey_pm;

    if (pkey_pm->pkey) {
        mbedtls_pk_free(pkey_pm->pkey);

        ssl_mem_free(pkey_pm->pkey);
        pkey_pm->pkey = ((void*)0);
    }

    ssl_mem_free(pk->pkey_pm);
    pk->pkey_pm = ((void*)0);
}
