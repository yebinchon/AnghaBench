
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int system_event_t ;
typedef int int32_t ;
typedef int esp_event_base_t ;


 int s_event_ctx ;
 int s_event_handler_cb (int ,int *) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void esp_event_post_to_user(void* arg, esp_event_base_t base, int32_t id, void* data)
{
    if (s_event_handler_cb) {
        system_event_t* event = (system_event_t*) data;
        (*s_event_handler_cb)(s_event_ctx, event);
    }
}
