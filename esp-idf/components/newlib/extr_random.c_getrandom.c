
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EFAULT ;
 int ESP_LOGD (int ,char*,...) ;
 int TAG ;
 int errno ;
 int esp_fill_random (void*,size_t) ;

ssize_t getrandom(void *buf, size_t buflen, unsigned int flags)
{




    ESP_LOGD(TAG, "getrandom(buf=0x%x, buflen=%d, flags=%u)", (int) buf, buflen, flags);

    if (buf == ((void*)0)) {
        errno = EFAULT;
        ESP_LOGD(TAG, "getrandom returns -1 (EFAULT)");
        return -1;
    }

    esp_fill_random(buf, buflen);

    ESP_LOGD(TAG, "getrandom returns %d", buflen);
    return buflen;
}
