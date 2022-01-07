
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long esp_random () ;

unsigned long os_random(void)
{
    return esp_random();
}
