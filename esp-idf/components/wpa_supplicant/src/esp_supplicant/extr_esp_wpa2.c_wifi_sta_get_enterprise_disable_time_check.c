
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_disable_time_check ;

bool wifi_sta_get_enterprise_disable_time_check(void)
{
    return s_disable_time_check;
}
