
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int peer; } ;
typedef TYPE_1__ SSL_SESSION ;


 int X509_free (int ) ;
 int ssl_mem_free (TYPE_1__*) ;

__attribute__((used)) static void SSL_SESSION_free(SSL_SESSION *session)
{
    X509_free(session->peer);
    ssl_mem_free(session);
}
