
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {int fin_sha512; int fin_sha256; int fin_sha1; int fin_md5; } ;


 int mbedtls_md5_update (int *,unsigned char const*,size_t) ;
 int mbedtls_sha1_update (int *,unsigned char const*,size_t) ;
 int mbedtls_sha256_update (int *,unsigned char const*,size_t) ;
 int mbedtls_sha512_update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void ssl_update_checksum_start( mbedtls_ssl_context *ssl,
                                       const unsigned char *buf, size_t len )
{
}
