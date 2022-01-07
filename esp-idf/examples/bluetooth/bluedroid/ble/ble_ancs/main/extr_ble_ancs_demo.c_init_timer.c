
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int esp_timer_create (int *,int *) ;
 int periodic_timer ;
 int periodic_timer_args ;

void init_timer(void)
{
    ESP_ERROR_CHECK(esp_timer_create(&periodic_timer_args, &periodic_timer));
}
