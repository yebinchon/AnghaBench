
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char mfl_code; } ;
typedef TYPE_1__ mbedtls_ssl_config ;


 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ;
 scalar_t__ MBEDTLS_SSL_MAX_CONTENT_LEN ;
 unsigned char MBEDTLS_SSL_MAX_FRAG_LEN_INVALID ;
 scalar_t__* mfl_code_to_length ;

int mbedtls_ssl_conf_max_frag_len( mbedtls_ssl_config *conf, unsigned char mfl_code )
{
    if( mfl_code >= MBEDTLS_SSL_MAX_FRAG_LEN_INVALID ||
        mfl_code_to_length[mfl_code] > MBEDTLS_SSL_MAX_CONTENT_LEN )
    {
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    conf->mfl_code = mfl_code;

    return( 0 );
}
