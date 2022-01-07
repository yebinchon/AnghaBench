
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cert; } ;
struct TYPE_8__ {TYPE_2__* pkey; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_2__ EVP_PKEY ;


 int EVP_PKEY_free (TYPE_2__*) ;
 int SSL_ASSERT1 (TYPE_2__*) ;

int SSL_use_PrivateKey(SSL *ssl, EVP_PKEY *pkey)
{
    SSL_ASSERT1(ssl);
    SSL_ASSERT1(pkey);

    if (ssl->cert->pkey == pkey)
        return 1;

    if (ssl->cert->pkey)
        EVP_PKEY_free(ssl->cert->pkey);

    ssl->cert->pkey = pkey;

    return 1;
}
