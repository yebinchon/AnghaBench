
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DPORT_REG_READ (int ) ;
 int SHA_1_BUSY_REG ;
 int SHA_256_BUSY_REG ;
 int SHA_384_BUSY_REG ;
 int SHA_512_BUSY_REG ;

void esp_sha_wait_idle(void)
{
    while(1) {
        if(DPORT_REG_READ(SHA_1_BUSY_REG) == 0
           && DPORT_REG_READ(SHA_256_BUSY_REG) == 0
           && DPORT_REG_READ(SHA_384_BUSY_REG) == 0
           && DPORT_REG_READ(SHA_512_BUSY_REG) == 0) {
            break;
        }
    }
}
