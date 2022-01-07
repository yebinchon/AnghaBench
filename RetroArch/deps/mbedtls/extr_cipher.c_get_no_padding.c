
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA ;

__attribute__((used)) static int get_no_padding( unsigned char *input, size_t input_len,
                              size_t *data_len )
{
    if( ((void*)0) == input || ((void*)0) == data_len )
        return( MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA );

    *data_len = input_len;

    return( 0 );
}
