
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_fill_random (unsigned char*,size_t) ;

int os_get_random(unsigned char *buf, size_t len)
{
    esp_fill_random(buf, len);
    return 0;
}
