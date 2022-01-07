
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct x509_pm {int * x509_crt; } ;
struct TYPE_3__ {int * x509_pm; } ;
typedef TYPE_1__ X509 ;


 int mbedtls_x509_crt_free (int *) ;
 int ssl_mem_free (int *) ;

void x509_pm_free(X509 *x)
{
    struct x509_pm *x509_pm = (struct x509_pm *)x->x509_pm;

    if (x509_pm->x509_crt) {
        mbedtls_x509_crt_free(x509_pm->x509_crt);

        ssl_mem_free(x509_pm->x509_crt);
        x509_pm->x509_crt = ((void*)0);
    }

    ssl_mem_free(x->x509_pm);
    x->x509_pm = ((void*)0);
}
