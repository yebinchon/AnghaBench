
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory_block_lock ;
 int portEXIT_CRITICAL (int *) ;

void esp_sha_unlock_memory_block(void)
{
    portEXIT_CRITICAL(&memory_block_lock);
}
