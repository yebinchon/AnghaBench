
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_button () ;
 int portTICK_PERIOD_MS ;
 int query_mdns_host (char*) ;
 int query_mdns_host_with_getaddrinfo (char*) ;
 int query_mdns_host_with_gethostbyname (char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void mdns_example_task(void *pvParameters)
{







    while(1) {
        check_button();
        vTaskDelay(50 / portTICK_PERIOD_MS);
    }
}
