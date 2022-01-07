
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_ssl_send_t ;
typedef int mbedtls_ssl_recv_timeout_t ;
typedef int mbedtls_ssl_recv_t ;
struct TYPE_3__ {int * f_recv_timeout; int * f_recv; int * f_send; void* p_bio; } ;
typedef TYPE_1__ mbedtls_ssl_context ;



void mbedtls_ssl_set_bio( mbedtls_ssl_context *ssl,
        void *p_bio,
        mbedtls_ssl_send_t *f_send,
        mbedtls_ssl_recv_t *f_recv,
        mbedtls_ssl_recv_timeout_t *f_recv_timeout )
{
    ssl->p_bio = p_bio;
    ssl->f_send = f_send;
    ssl->f_recv = f_recv;
    ssl->f_recv_timeout = f_recv_timeout;
}
