
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ref_counter; } ;
typedef TYPE_1__ X509 ;


 int SSL_ASSERT3 (TYPE_1__*) ;
 int X509_METHOD_CALL (int ,TYPE_1__*) ;
 int free ;
 int ssl_mem_free (TYPE_1__*) ;

void X509_free(X509 *x)
{
    SSL_ASSERT3(x);

    if (--x->ref_counter > 0) {
        return;
    }

    X509_METHOD_CALL(free, x);

    ssl_mem_free(x);
}
