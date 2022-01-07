
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int serviceTxtData ;
struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ mdns_txt_item_t ;


 int CONFIG_EXAMPLE_MDNS_HOST_NAME ;
 int ESP_ERROR_CHECK (int ) ;
 int MDNS_INSTANCE ;
 int mdns_hostname_set (int ) ;
 int mdns_init () ;
 int mdns_instance_name_set (int ) ;
 int mdns_service_add (char*,char*,char*,int,TYPE_1__*,int) ;

__attribute__((used)) static void initialise_mdns(void)
{
    mdns_init();
    mdns_hostname_set(CONFIG_EXAMPLE_MDNS_HOST_NAME);
    mdns_instance_name_set(MDNS_INSTANCE);

    mdns_txt_item_t serviceTxtData[] = {
        {"board", "esp32"},
        {"path", "/"}
    };

    ESP_ERROR_CHECK(mdns_service_add("ESP32-WebServer", "_http", "_tcp", 80, serviceTxtData,
                                     sizeof(serviceTxtData) / sizeof(serviceTxtData[0])));
}
