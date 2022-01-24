#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* f_send ) (int /*<<< orphan*/ ,unsigned char*,int) ;int out_left; int out_msglen; scalar_t__* out_ctr; int /*<<< orphan*/  p_bio; int /*<<< orphan*/  out_hdr; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_SSL_COUNTER_WRAPPING ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 unsigned char FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC5( mbedtls_ssl_context *ssl )
{
    int ret;
    unsigned char *buf, i;

    FUNC0( 2, ( "=> flush output" ) );

    if( ssl->f_send == NULL )
    {
        FUNC0( 1, ( "Bad usage of mbedtls_ssl_set_bio() "
                            "or mbedtls_ssl_set_bio()" ) );
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    /* Avoid incrementing counter if data is flushed */
    if( ssl->out_left == 0 )
    {
        FUNC0( 2, ( "<= flush output" ) );
        return( 0 );
    }

    while( ssl->out_left > 0 )
    {
        FUNC0( 2, ( "message length: %d, out_left: %d",
                       FUNC2( ssl ) + ssl->out_msglen, ssl->out_left ) );

        buf = ssl->out_hdr + FUNC2( ssl ) +
              ssl->out_msglen - ssl->out_left;
        ret = ssl->f_send( ssl->p_bio, buf, ssl->out_left );

        FUNC1( 2, "ssl->f_send", ret );

        if( ret <= 0 )
            return( ret );

        ssl->out_left -= ret;
    }

    for( i = 8; i > FUNC3( ssl ); i-- )
        if( ++ssl->out_ctr[i - 1] != 0 )
            break;

    /* The loop goes to its end iff the counter is wrapping */
    if( i == FUNC3( ssl ) )
    {
        FUNC0( 1, ( "outgoing message counter would wrap" ) );
        return( MBEDTLS_ERR_SSL_COUNTER_WRAPPING );
    }

    FUNC0( 2, ( "<= flush output" ) );

    return( 0 );
}