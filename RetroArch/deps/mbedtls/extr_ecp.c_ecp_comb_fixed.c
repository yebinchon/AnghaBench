
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;


 size_t mbedtls_mpi_get_bit (int const*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;

__attribute__((used)) static void ecp_comb_fixed( unsigned char x[], size_t d,
                            unsigned char w, const mbedtls_mpi *m )
{
    size_t i, j;
    unsigned char c, cc, adjust;

    memset( x, 0, d+1 );


    for( i = 0; i < d; i++ )
        for( j = 0; j < w; j++ )
            x[i] |= mbedtls_mpi_get_bit( m, i + d * j ) << j;


    c = 0;
    for( i = 1; i <= d; i++ )
    {

        cc = x[i] & c;
        x[i] = x[i] ^ c;
        c = cc;


        adjust = 1 - ( x[i] & 0x01 );
        c |= x[i] & ( x[i-1] * adjust );
        x[i] = x[i] ^ ( x[i-1] * adjust );
        x[i-1] |= adjust << 7;
    }
}
