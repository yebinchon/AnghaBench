
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509write_csr ;


 int memset (int *,int ,int) ;

void mbedtls_x509write_csr_init( mbedtls_x509write_csr *ctx )
{
    memset( ctx, 0, sizeof(mbedtls_x509write_csr) );
}
