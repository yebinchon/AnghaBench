
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_sha_type ;


 scalar_t__ SHA2_384 ;
 scalar_t__ SHA2_512 ;
 scalar_t__ SHA_H_BASE ;
 int esp_sha_wait_idle () ;
 int memcpy (void*,void*,int ) ;
 int memcpy_swapwords (void*,void*,int ) ;
 int state_length (scalar_t__) ;

void esp_sha_read_digest_state(esp_sha_type sha_type, void *digest_state)
{

    esp_sha_wait_idle();
    if (sha_type != SHA2_512 && sha_type != SHA2_384) {

        memcpy(digest_state, (void *)SHA_H_BASE, state_length(sha_type));
    } else {

        memcpy_swapwords(digest_state, (void *)SHA_H_BASE, state_length(sha_type));
    }
}
