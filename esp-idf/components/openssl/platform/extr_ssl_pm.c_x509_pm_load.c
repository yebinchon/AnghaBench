
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct x509_pm {unsigned char* x509_crt; } ;
typedef int mbedtls_x509_crt ;
struct TYPE_3__ {scalar_t__ x509_pm; } ;
typedef TYPE_1__ X509 ;


 int SSL_DEBUG (int ,char*,...) ;
 int SSL_PLATFORM_ERROR_LEVEL ;
 int mbedtls_x509_crt_free (unsigned char*) ;
 int mbedtls_x509_crt_init (unsigned char*) ;
 int mbedtls_x509_crt_parse (unsigned char*,unsigned char*,int) ;
 int ssl_mem_free (unsigned char*) ;
 void* ssl_mem_malloc (int) ;
 int ssl_memcpy (unsigned char*,unsigned char const*,int) ;

int x509_pm_load(X509 *x, const unsigned char *buffer, int len)
{
    int ret;
    unsigned char *load_buf;
    struct x509_pm *x509_pm = (struct x509_pm *)x->x509_pm;

 if (x509_pm->x509_crt)
        mbedtls_x509_crt_free(x509_pm->x509_crt);

    if (!x509_pm->x509_crt) {
        x509_pm->x509_crt = ssl_mem_malloc(sizeof(mbedtls_x509_crt));
        if (!x509_pm->x509_crt) {
            SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (x509_pm->x509_crt)");
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

    mbedtls_x509_crt_init(x509_pm->x509_crt);

    ret = mbedtls_x509_crt_parse(x509_pm->x509_crt, load_buf, len + 1);
    ssl_mem_free(load_buf);

    if (ret) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_x509_crt_parse return -0x%x", -ret);
        goto failed;
    }

    return 0;

failed:
    mbedtls_x509_crt_free(x509_pm->x509_crt);
    ssl_mem_free(x509_pm->x509_crt);
    x509_pm->x509_crt = ((void*)0);
no_mem:
    return -1;
}
