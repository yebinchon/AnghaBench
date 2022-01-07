
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_reset_reason_t ;


 int s_reset_reason ;

esp_reset_reason_t esp_reset_reason(void)
{
    return s_reset_reason;
}
