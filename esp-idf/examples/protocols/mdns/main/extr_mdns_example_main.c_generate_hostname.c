
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CONFIG_MDNS_HOSTNAME ;
 int ESP_MAC_WIFI_STA ;
 int abort () ;
 int asprintf (char**,char*,int ,int ,int ,int ) ;
 int esp_read_mac (int *,int ) ;
 char* strdup (int ) ;

__attribute__((used)) static char* generate_hostname(void)
{

    return strdup(CONFIG_MDNS_HOSTNAME);
}
