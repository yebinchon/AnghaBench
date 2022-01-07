
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* alpn_chosen; TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_5__ {char** alpn_list; } ;


 int MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO ;
 int MBEDTLS_SSL_ALERT_LEVEL_FATAL ;
 int MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR ;
 int MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER ;
 int MBEDTLS_SSL_ALERT_MSG_NO_APPLICATION_PROTOCOL ;
 int mbedtls_ssl_send_alert_message (TYPE_2__*,int ,int ) ;
 scalar_t__ memcmp (unsigned char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int ssl_srv_parse_alpn_ext( mbedtls_ssl_context *ssl,
                               const unsigned char *buf, size_t len )
{
    size_t list_len, cur_len, ours_len;
    const unsigned char *theirs, *start, *end;
    const char **ours;


    if( ssl->conf->alpn_list == ((void*)0) )
        return( 0 );
    if( len < 4 )
    {
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }

    list_len = ( buf[0] << 8 ) | buf[1];
    if( list_len != len - 2 )
    {
        mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR );
        return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
    }




    start = buf + 2;
    end = buf + len;
    for( ours = ssl->conf->alpn_list; *ours != ((void*)0); ours++ )
    {
        ours_len = strlen( *ours );
        for( theirs = start; theirs != end; theirs += cur_len )
        {

            if( theirs > end )
            {
                mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                                MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER );
                return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
            }

            cur_len = *theirs++;


            if( cur_len == 0 )
            {
                mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                                MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER );
                return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
            }

            if( cur_len == ours_len &&
                memcmp( theirs, *ours, cur_len ) == 0 )
            {
                ssl->alpn_chosen = *ours;
                return( 0 );
            }
        }
    }


    mbedtls_ssl_send_alert_message( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                            MBEDTLS_SSL_ALERT_MSG_NO_APPLICATION_PROTOCOL );
    return( MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO );
}
