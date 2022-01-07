
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;
typedef int SHA_CTX ;


 int esp_sha_lock_engine (int ) ;
 int esp_sha_unlock_engine (int ) ;
 int ets_sha_finish (int *,unsigned char*) ;
 int ets_sha_init (int *,int ) ;
 int ets_sha_starts (int *,int ) ;
 int ets_sha_update (int *,unsigned char const*,size_t,int) ;

void esp_sha(esp_sha_type sha_type, const unsigned char *input, size_t ilen, unsigned char *output)
{
    SHA_CTX ctx;

    esp_sha_lock_engine(sha_type);

    ets_sha_init(&ctx, sha_type);
    ets_sha_starts(&ctx, 0);
    ets_sha_update(&ctx, input, ilen, 0);
    ets_sha_finish(&ctx, output);

    esp_sha_unlock_engine(sha_type);
}
