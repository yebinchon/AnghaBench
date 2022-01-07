
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;
typedef int mbedtls_sha256_context ;
typedef int mbedtls_sha1_context ;
typedef scalar_t__ esp_sha_type ;


 scalar_t__ SHA1 ;
 scalar_t__ SHA2_256 ;
 scalar_t__ SHA2_384 ;
 scalar_t__ SHA2_512 ;
 int assert (int) ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int mbedtls_sha1_finish_ret (int *,unsigned char*) ;
 int mbedtls_sha1_free (int *) ;
 int mbedtls_sha1_starts_ret (int *) ;
 int mbedtls_sha1_update_ret (int *,unsigned char const*,size_t) ;
 int mbedtls_sha256_finish_ret (int *,unsigned char*) ;
 int mbedtls_sha256_free (int *) ;
 int mbedtls_sha256_starts_ret (int *,int ) ;
 int mbedtls_sha256_update_ret (int *,unsigned char const*,size_t) ;
 int mbedtls_sha512_finish_ret (int *,unsigned char*) ;
 int mbedtls_sha512_free (int *) ;
 int mbedtls_sha512_starts_ret (int *,int) ;
 int mbedtls_sha512_update_ret (int *,unsigned char const*,size_t) ;

void esp_sha(esp_sha_type sha_type, const unsigned char *input, size_t ilen, unsigned char *output)
{
    int ret;
    assert(input != ((void*)0) && output != ((void*)0));

    if (sha_type == SHA1) {

        mbedtls_sha1_context *ctx1 = (mbedtls_sha1_context *)malloc(sizeof(mbedtls_sha1_context));
        assert(ctx1 != ((void*)0));
        mbedtls_sha1_starts_ret(ctx1);
        ret = mbedtls_sha1_update_ret(ctx1, input, ilen);
        assert(ret == 0);
        ret = mbedtls_sha1_finish_ret(ctx1, output);
        assert(ret == 0);
        mbedtls_sha1_free(ctx1);
        free(ctx1);

    } else if (sha_type == SHA2_256) {

        mbedtls_sha256_context *ctx256 = (mbedtls_sha256_context *)malloc(sizeof(mbedtls_sha256_context));
        assert(ctx256 != ((void*)0));
        mbedtls_sha256_starts_ret(ctx256, 0);
        ret = mbedtls_sha256_update_ret(ctx256, input, ilen);
        assert(ret == 0);
        ret = mbedtls_sha256_finish_ret(ctx256, output);
        assert(ret == 0);
        mbedtls_sha256_free(ctx256);
        free(ctx256);

    } else if (sha_type == SHA2_384) {

        mbedtls_sha512_context *ctx384 = (mbedtls_sha512_context *)malloc(sizeof(mbedtls_sha512_context));
        assert(ctx384 != ((void*)0));
        mbedtls_sha512_starts_ret(ctx384, 1);
        ret = mbedtls_sha512_update_ret(ctx384, input, ilen);
        assert(ret == 0);
        ret = mbedtls_sha512_finish_ret(ctx384, output);
        assert(ret == 0);
        mbedtls_sha512_free(ctx384);
        free(ctx384);

    } else if (sha_type == SHA2_512) {

        mbedtls_sha512_context *ctx512 = (mbedtls_sha512_context *)malloc(sizeof(mbedtls_sha512_context));
        assert(ctx512 != ((void*)0));
        mbedtls_sha512_starts_ret(ctx512, 0);
        ret = mbedtls_sha512_update_ret(ctx512, input, ilen);
        assert(ret == 0);
        ret = mbedtls_sha512_finish_ret(ctx512, output);
        assert(ret == 0);
        mbedtls_sha512_free(ctx512);
        free(ctx512);

    }

}
