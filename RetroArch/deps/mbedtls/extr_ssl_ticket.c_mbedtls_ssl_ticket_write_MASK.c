#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ mbedtls_ssl_ticket_key ;
struct TYPE_5__ {int (* f_rng ) (int /*<<< orphan*/ ,unsigned char*,int) ;size_t active; int /*<<< orphan*/  mutex; int /*<<< orphan*/  p_rng; int /*<<< orphan*/  ticket_lifetime; TYPE_1__* keys; } ;
typedef  TYPE_2__ mbedtls_ssl_ticket_context ;
typedef  int /*<<< orphan*/  mbedtls_ssl_session ;
typedef  unsigned char clear_len ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ; 
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ; 
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t*,unsigned char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/  const*,unsigned char*,int,size_t*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC7( void *p_ticket,
                              const mbedtls_ssl_session *session,
                              unsigned char *start,
                              const unsigned char *end,
                              size_t *tlen,
                              uint32_t *ticket_lifetime )
{
    int ret;
    mbedtls_ssl_ticket_context *ctx = p_ticket;
    mbedtls_ssl_ticket_key *key;
    unsigned char *key_name = start;
    unsigned char *iv = start + 4;
    unsigned char *state_len_bytes = iv + 12;
    unsigned char *state = state_len_bytes + 2;
    unsigned char *tag;
    size_t clear_len, ciph_len;

    *tlen = 0;

    if( ctx == NULL || ctx->f_rng == NULL )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    /* We need at least 4 bytes for key_name, 12 for IV, 2 for len 16 for tag,
     * in addition to session itself, that will be checked when writing it. */
    if( end - start < 4 + 12 + 2 + 16 )
        return( MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL );

#if defined(MBEDTLS_THREADING_C)
    if( ( ret = mbedtls_mutex_lock( &ctx->mutex ) ) != 0 )
        return( ret );
#endif

    if( ( ret = FUNC5( ctx ) ) != 0 )
        goto cleanup;

    key = &ctx->keys[ctx->active];

    *ticket_lifetime = ctx->ticket_lifetime;

    FUNC3( key_name, key->name, 4 );

    if( ( ret = ctx->f_rng( ctx->p_rng, iv, 12 ) ) != 0 )
        goto cleanup;

    /* Dump session state */
    if( ( ret = FUNC4( session,
                                  state, end - state, &clear_len ) ) != 0 ||
        (unsigned long) clear_len > 65535 )
    {
         goto cleanup;
    }
    state_len_bytes[0] = ( clear_len >> 8 ) & 0xff;
    state_len_bytes[1] = ( clear_len      ) & 0xff;

    /* Encrypt and authenticate */
    tag = state + clear_len;
    if( ( ret = FUNC0( &key->ctx,
                    iv, 12, key_name, 4 + 12 + 2,
                    state, clear_len, state, &ciph_len, tag, 16 ) ) != 0 )
    {
        goto cleanup;
    }
    if( ciph_len != clear_len )
    {
        ret = MBEDTLS_ERR_SSL_INTERNAL_ERROR;
        goto cleanup;
    }

    *tlen = 4 + 12 + 2 + 16 + ciph_len;

cleanup:
#if defined(MBEDTLS_THREADING_C)
    if( mbedtls_mutex_unlock( &ctx->mutex ) != 0 )
        return( MBEDTLS_ERR_THREADING_MUTEX_ERROR );
#endif

    return( ret );
}