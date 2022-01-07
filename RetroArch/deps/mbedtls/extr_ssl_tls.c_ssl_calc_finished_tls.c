
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int padbuf ;
struct TYPE_16__ {int master; } ;
typedef TYPE_2__ mbedtls_ssl_session ;
struct TYPE_17__ {TYPE_1__* handshake; TYPE_2__* session; TYPE_2__* session_negotiate; } ;
typedef TYPE_3__ mbedtls_ssl_context ;
struct TYPE_18__ {scalar_t__ state; } ;
typedef TYPE_4__ mbedtls_sha1_context ;
struct TYPE_19__ {scalar_t__ state; } ;
typedef TYPE_5__ mbedtls_md5_context ;
struct TYPE_15__ {int (* tls_prf ) (int ,int,char const*,unsigned char*,int,unsigned char*,int) ;int fin_sha1; int fin_md5; } ;


 int MBEDTLS_SSL_DEBUG_BUF (int,char*,unsigned char*,int) ;
 int MBEDTLS_SSL_DEBUG_MSG (int,char*) ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int mbedtls_md5_clone (TYPE_5__*,int *) ;
 int mbedtls_md5_finish (TYPE_5__*,unsigned char*) ;
 int mbedtls_md5_free (TYPE_5__*) ;
 int mbedtls_md5_init (TYPE_5__*) ;
 int mbedtls_sha1_clone (TYPE_4__*,int *) ;
 int mbedtls_sha1_finish (TYPE_4__*,unsigned char*) ;
 int mbedtls_sha1_free (TYPE_4__*) ;
 int mbedtls_sha1_init (TYPE_4__*) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int stub1 (int ,int,char const*,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static void ssl_calc_finished_tls(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;
    unsigned char padbuf[36];

    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "=> calc  finished tls" ) );

    mbedtls_md5_init( &md5 );
    mbedtls_sha1_init( &sha1 );

    mbedtls_md5_clone( &md5, &ssl->handshake->fin_md5 );
    mbedtls_sha1_clone( &sha1, &ssl->handshake->fin_sha1 );
    MBEDTLS_SSL_DEBUG_BUF( 4, "finished  md5 state", (unsigned char *)
                    md5.state, sizeof( md5.state ) );



    MBEDTLS_SSL_DEBUG_BUF( 4, "finished sha1 state", (unsigned char *)
                   sha1.state, sizeof( sha1.state ) );


    sender = ( from == MBEDTLS_SSL_IS_CLIENT )
             ? "client finished"
             : "server finished";

    mbedtls_md5_finish( &md5, padbuf );
    mbedtls_sha1_finish( &sha1, padbuf + 16 );

    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 36, buf, len );

    MBEDTLS_SSL_DEBUG_BUF( 3, "calc finished result", buf, len );

    mbedtls_md5_free( &md5 );
    mbedtls_sha1_free( &sha1 );

    mbedtls_zeroize( padbuf, sizeof( padbuf ) );

    MBEDTLS_SSL_DEBUG_MSG( 2, ( "<= calc  finished" ) );
}
