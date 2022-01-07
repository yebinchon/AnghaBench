
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* data; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 int SSL_ASSERT3 (TYPE_1__*) ;
 int ssl_mem_free (TYPE_1__*) ;

void OPENSSL_sk_free(OPENSSL_STACK *stack)
{
    SSL_ASSERT3(stack);

    ssl_mem_free(stack->data);
    ssl_mem_free(stack);
}
