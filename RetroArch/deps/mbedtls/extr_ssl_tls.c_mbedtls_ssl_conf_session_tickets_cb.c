
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_ssl_ticket_write_t ;
typedef int mbedtls_ssl_ticket_parse_t ;
struct TYPE_3__ {void* p_ticket; int * f_ticket_parse; int * f_ticket_write; } ;
typedef TYPE_1__ mbedtls_ssl_config ;



void mbedtls_ssl_conf_session_tickets_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_ticket_write_t *f_ticket_write,
        mbedtls_ssl_ticket_parse_t *f_ticket_parse,
        void *p_ticket )
{
    conf->f_ticket_write = f_ticket_write;
    conf->f_ticket_parse = f_ticket_parse;
    conf->p_ticket = p_ticket;
}
