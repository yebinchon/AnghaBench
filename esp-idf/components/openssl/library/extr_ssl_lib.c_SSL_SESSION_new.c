
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int peer; } ;
typedef TYPE_1__ SSL_SESSION ;


 int SSL_DEBUG (int ,char*) ;
 int SSL_LIB_ERROR_LEVEL ;
 int X509_new () ;
 int ssl_mem_free (TYPE_1__*) ;
 TYPE_1__* ssl_mem_zalloc (int) ;

__attribute__((used)) static SSL_SESSION* SSL_SESSION_new(void)
{
    SSL_SESSION *session;

    session = ssl_mem_zalloc(sizeof(SSL_SESSION));
    if (!session) {
        SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "no enough memory > (session)");
        goto failed1;
    }

    session->peer = X509_new();
    if (!session->peer) {
       SSL_DEBUG(SSL_LIB_ERROR_LEVEL, "X509_new() return NULL");
       goto failed2;
    }

    return session;

failed2:
    ssl_mem_free(session);
failed1:
    return ((void*)0);
}
