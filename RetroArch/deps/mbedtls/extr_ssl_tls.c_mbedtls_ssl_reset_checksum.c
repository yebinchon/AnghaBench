
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {int fin_sha512; int fin_sha256; int fin_sha1; int fin_md5; } ;


 int mbedtls_md5_starts (int *) ;
 int mbedtls_sha1_starts (int *) ;
 int mbedtls_sha256_starts (int *,int ) ;
 int mbedtls_sha512_starts (int *,int) ;

void mbedtls_ssl_reset_checksum( mbedtls_ssl_context *ssl )
{
}
