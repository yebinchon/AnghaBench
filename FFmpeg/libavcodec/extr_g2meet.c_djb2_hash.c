
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EPIC_HASH_SIZE ;

__attribute__((used)) static int djb2_hash(uint32_t key)
{
    uint32_t h = 5381;

    h = (h * 33) ^ ((key >> 24) & 0xFF);
    h = (h * 33) ^ ((key >> 16) & 0xFF);
    h = (h * 33) ^ ((key >> 8) & 0xFF);
    h = (h * 33) ^ (key & 0xFF);

    return h & (EPIC_HASH_SIZE - 1);
}
