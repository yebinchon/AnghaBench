
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sntp_sync_mode_t ;


 int sntp_sync_mode ;

sntp_sync_mode_t sntp_get_sync_mode(void)
{
    return sntp_sync_mode;
}
