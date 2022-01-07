
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int Isconnecting ;
 int esp_ble_gap_start_scanning (int) ;
 int stop_scan_done ;

__attribute__((used)) static void start_scan(void)
{
    stop_scan_done = 0;
    Isconnecting = 0;
    uint32_t duration = 30;
    esp_ble_gap_start_scanning(duration);
}
