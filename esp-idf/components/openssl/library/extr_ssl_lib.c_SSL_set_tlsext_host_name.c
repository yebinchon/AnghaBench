
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const SSL ;


 int SSL_ASSERT1 (char const*) ;
 int SSL_METHOD_CALL (int ,char const*,char const*) ;
 int set_hostname ;

int SSL_set_tlsext_host_name(SSL* ssl, const char *hostname)
{
     SSL_ASSERT1(ssl);
     SSL_ASSERT1(hostname);

     SSL_METHOD_CALL(set_hostname, ssl, hostname);

     return 1;
}
