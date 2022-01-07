
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef scalar_t__ esp_event_base_t ;


 scalar_t__ TIMER_EVENTS ;




__attribute__((used)) static char* get_id_string(esp_event_base_t base, int32_t id) {
    char* event = "";
    if (base == TIMER_EVENTS) {
        switch(id) {
            case 129:
            event = "TIMER_EVENT_STARTED";
            break;
            case 130:
            event = "TIMER_EVENT_EXPIRY";
            break;
            case 128:
            event = "TIMER_EVENT_STOPPED";
            break;
        }
    } else {
        event = "TASK_ITERATION_EVENT";
    }
    return event;
}
