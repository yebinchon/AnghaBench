
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_sha_type ;


 int REG_WRITE (int ,int) ;
 int SHA_CONTINUE_REG ;
 int SHA_MODE_REG ;
 scalar_t__ SHA_M_BASE ;
 int SHA_START_REG ;
 int block_length (int) ;
 int esp_sha_wait_idle () ;
 int memcpy_endianswap (void*,void const*,int ) ;

void esp_sha_block(esp_sha_type sha_type, const void *data_block, bool is_first_block)
{


    REG_WRITE(SHA_MODE_REG, sha_type);


    memcpy_endianswap((void *)SHA_M_BASE, data_block, block_length(sha_type));

    esp_sha_wait_idle();
    if (is_first_block) {
        REG_WRITE(SHA_START_REG, 1);
    } else {
        REG_WRITE(SHA_CONTINUE_REG, 1);
    }





}
