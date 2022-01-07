
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int esp_random () ;
 int memcpy (void*,int *,int) ;
 int memset (void*,int,size_t) ;

__attribute__((used)) static void bt_rand(void *buf, size_t len)
{
    if (!len) {
        return;
    }

    memset(buf, 0x55, len);

    for (int i = 0; i < (int)(len / sizeof(uint32_t)); i++) {
        uint32_t rand = esp_random();
        memcpy(buf + i*sizeof(uint32_t), &rand, sizeof(uint32_t));
    }

    return;
}
