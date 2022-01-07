
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void esp_fill_random (void*,size_t) ;

void bootloader_fill_random(void *buffer, size_t length)
{
    return esp_fill_random(buffer, length);
}
