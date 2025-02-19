
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_CIPHER_INVALID_PADDING ;

__attribute__((used)) static int get_one_and_zeros_padding( unsigned char *input, size_t input_len,
                                      size_t *data_len )
{
    size_t i;
    unsigned char done = 0, prev_done, bad;

    if( ((void*)0) == input || ((void*)0) == data_len )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    bad = 0xFF;
    *data_len = 0;
    for( i = input_len; i > 0; i-- )
    {
        prev_done = done;
        done |= ( input[i-1] != 0 );
        *data_len |= ( i - 1 ) * ( done != prev_done );
        bad &= ( input[i-1] ^ 0x80 ) | ( done == prev_done );
    }

    return( MBEDTLS_ERR_CIPHER_INVALID_PADDING * ( bad != 0 ) );

}
