
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct x509_pm {int x509_crt; int ex_crt; } ;
struct TYPE_4__ {struct x509_pm* x509_pm; } ;
typedef TYPE_1__ X509 ;


 int SSL_DEBUG (int ,char*) ;
 int SSL_PLATFORM_ERROR_LEVEL ;
 struct x509_pm* ssl_mem_zalloc (int) ;

int x509_pm_new(X509 *x, X509 *m_x)
{
    struct x509_pm *x509_pm;

    x509_pm = ssl_mem_zalloc(sizeof(struct x509_pm));
    if (!x509_pm) {
        SSL_DEBUG(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (x509_pm)");
        goto failed1;
    }

    x->x509_pm = x509_pm;

    if (m_x) {
        struct x509_pm *m_x509_pm = (struct x509_pm *)m_x->x509_pm;

        x509_pm->ex_crt = m_x509_pm->x509_crt;
    }

    return 0;

failed1:
    return -1;
}
