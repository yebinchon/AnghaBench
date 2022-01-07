
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pkey_pm {unsigned char* pkey; } ;
typedef int mbedtls_pk_context ;
struct TYPE_3__ {scalar_t__ pkey_pm; } ;
typedef TYPE_1__ EVP_PKEY ;


 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PLATFORM_ERROR_LEVEL ;
 int mbedtls_pk_free (unsigned char*) ;
 int mbedtls_pk_init (unsigned char*) ;
 int mbedtls_pk_parse_key (unsigned char*,unsigned char*,int,int *,int ) ;
 int ssl_mem_free (unsigned char*) ;
 void* ssl_mem_malloc (int) ;
 int ssl_memcpy (unsigned char*,unsigned char const*,int) ;

int pkey_pm_load(EVP_PKEY *pk, const unsigned char *buffer, int len)
{
    int ret;
    unsigned char *load_buf;
    struct pkey_pm *pkey_pm = (struct pkey_pm *)pk->pkey_pm;

    if (pkey_pm->pkey)
        mbedtls_pk_free(pkey_pm->pkey);

    if (!pkey_pm->pkey) {
        pkey_pm->pkey = ssl_mem_malloc(sizeof(mbedtls_pk_context));
        if (!pkey_pm->pkey) {
            SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (pkey_pm->pkey)");
            goto no_mem;
        }
    }

    load_buf = ssl_mem_malloc(len + 1);
    if (!load_buf) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (load_buf)");
        goto failed;
    }

    ssl_memcpy(load_buf, buffer, len);
    load_buf[len] = '\0';

    mbedtls_pk_init(pkey_pm->pkey);

    ret = mbedtls_pk_parse_key(pkey_pm->pkey, load_buf, len + 1, ((void*)0), 0);
    ssl_mem_free(load_buf);

    if (ret) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_pk_parse_key return -0x%x", -ret);
        goto failed;
    }

    return 0;

failed:
    mbedtls_pk_free(pkey_pm->pkey);
    ssl_mem_free(pkey_pm->pkey);
    pkey_pm->pkey = ((void*)0);
no_mem:
    return -1;
}
