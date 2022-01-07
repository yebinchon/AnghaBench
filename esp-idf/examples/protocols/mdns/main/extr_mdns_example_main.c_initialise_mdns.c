
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ mdns_txt_item_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,char*) ;
 int EXAMPLE_MDNS_INSTANCE ;
 int TAG ;
 int free (char*) ;
 char* generate_hostname () ;
 int mdns_hostname_set (char*) ;
 int mdns_init () ;
 int mdns_instance_name_set (int ) ;
 int mdns_service_add (char*,char*,char*,int,TYPE_1__*,int) ;
 int mdns_service_txt_item_set (char*,char*,char*,char*) ;

__attribute__((used)) static void initialise_mdns(void)
{
    char* hostname = generate_hostname();

    ESP_ERROR_CHECK( mdns_init() );

    ESP_ERROR_CHECK( mdns_hostname_set(hostname) );
    ESP_LOGI(TAG, "mdns hostname set to: [%s]", hostname);

    ESP_ERROR_CHECK( mdns_instance_name_set(EXAMPLE_MDNS_INSTANCE) );


    mdns_txt_item_t serviceTxtData[3] = {
        {"board","esp32"},
        {"u","user"},
        {"p","password"}
    };


    ESP_ERROR_CHECK( mdns_service_add("ESP32-WebServer", "_http", "_tcp", 80, serviceTxtData, 3) );

    ESP_ERROR_CHECK( mdns_service_txt_item_set("_http", "_tcp", "path", "/foobar") );

    ESP_ERROR_CHECK( mdns_service_txt_item_set("_http", "_tcp", "u", "admin") );
    free(hostname);
}
