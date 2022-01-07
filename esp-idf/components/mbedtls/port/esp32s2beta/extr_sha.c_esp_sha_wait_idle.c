
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DPORT_REG_READ (int ) ;
 int SHA_BUSY_REG ;

void esp_sha_wait_idle(void)
{
    while(DPORT_REG_READ(SHA_BUSY_REG) != 0) { }
}
