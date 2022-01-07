
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int esp_sha_type ;


 scalar_t__ SHA_1_START_REG ;

__attribute__((used)) inline static uint32_t SHA_START_REG(esp_sha_type sha_type) {
    return SHA_1_START_REG + sha_type * 0x10;
}
