
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_ASSERT3 (size_t) ;
 int SSL_METHOD_CALL (int ,int *,size_t) ;
 int set_bufflen ;

void SSL_set_default_read_buffer_len(SSL *ssl, size_t len)
{
    SSL_ASSERT3(ssl);
    SSL_ASSERT3(len);

    SSL_METHOD_CALL(set_bufflen, ssl, len);
}
