
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {void* data; int id; int base; scalar_t__ data_allocated; scalar_t__ data_set; } ;
typedef TYPE_1__ esp_event_post_instance_t ;
struct TYPE_9__ {int profiling_mutex; } ;
typedef TYPE_2__ esp_event_loop_instance_t ;
struct TYPE_10__ {int time; int invoked; int arg; int (* handler ) (int ,int ,int ,void*) ;} ;
typedef TYPE_3__ esp_event_handler_instance_t ;


 int ESP_LOGD (int ,char*,int ,int ,int (*) (int ,int ,int ,void*),TYPE_2__*) ;
 int TAG ;
 scalar_t__ esp_timer_get_time () ;
 int portMAX_DELAY ;
 int stub1 (int ,int ,int ,void*) ;
 int stub2 (int ,int ,int ,void*) ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void handler_execute(esp_event_loop_instance_t* loop, esp_event_handler_instance_t *handler, esp_event_post_instance_t post)
{
    ESP_LOGD(TAG, "running post %s:%d with handler %p on loop %p", post.base, post.id, handler->handler, loop);
    (*(handler->handler))(handler->arg, post.base, post.id, post.data);
}
