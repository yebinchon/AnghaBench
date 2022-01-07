
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* p; int len; struct TYPE_7__* next; int type; } ;
typedef TYPE_2__ mbedtls_ssl_flight_item ;
struct TYPE_8__ {int out_msglen; TYPE_1__* handshake; int out_msgtype; int out_msg; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {TYPE_2__* flight; } ;


 int MBEDTLS_ERR_SSL_ALLOC_FAILED ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 scalar_t__ mbedtls_calloc (int,int) ;
 int mbedtls_free (TYPE_2__*) ;
 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static int ssl_flight_append( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_flight_item *msg;


    if( ( msg = (mbedtls_ssl_flight_item*)
             mbedtls_calloc( 1, sizeof( mbedtls_ssl_flight_item ) ) ) == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "alloc %d bytes failed",
                            sizeof( mbedtls_ssl_flight_item ) ) );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }

    if( ( msg->p = (unsigned char*)mbedtls_calloc( 1, ssl->out_msglen ) ) == ((void*)0) )
    {
        MBEDTLS_SSL_DEBUG_MSG( 1, ( "alloc %d bytes failed", ssl->out_msglen ) );
        mbedtls_free( msg );
        return( MBEDTLS_ERR_SSL_ALLOC_FAILED );
    }


    memcpy( msg->p, ssl->out_msg, ssl->out_msglen );
    msg->len = ssl->out_msglen;
    msg->type = ssl->out_msgtype;
    msg->next = ((void*)0);


    if( ssl->handshake->flight == ((void*)0) )
        ssl->handshake->flight = msg;
    else
    {
        mbedtls_ssl_flight_item *cur = ssl->handshake->flight;
        while( cur->next != ((void*)0) )
            cur = cur->next;
        cur->next = msg;
    }

    return( 0 );
}
