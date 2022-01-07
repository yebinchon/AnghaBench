
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* wifi_prov_cb_func_t ) (void*,int ,void*) ;
typedef int wifi_prov_cb_event_t ;
struct TYPE_5__ {void* user_data; int (* event_cb ) (void*,int ,void*) ;} ;
struct TYPE_7__ {void* user_data; int (* event_cb ) (void*,int ,void*) ;} ;
struct TYPE_6__ {TYPE_1__ scheme_event_handler; TYPE_3__ app_event_handler; } ;
struct TYPE_8__ {TYPE_2__ mgr_config; } ;


 int ACQUIRE_LOCK (int ) ;
 int ESP_LOGD (int ,char*,int ) ;
 int ESP_LOGE (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 int WIFI_PROV_EVENT ;
 scalar_t__ esp_event_post (int ,int ,void*,size_t,int ) ;
 int portMAX_DELAY ;
 TYPE_4__* prov_ctx ;
 int prov_ctx_lock ;

__attribute__((used)) static void execute_event_cb(wifi_prov_cb_event_t event_id, void *event_data, size_t event_data_size)
{
    ESP_LOGD(TAG, "execute_event_cb : %d", event_id);

    if (prov_ctx) {
        wifi_prov_cb_func_t app_cb = prov_ctx->mgr_config.app_event_handler.event_cb;
        void *app_data = prov_ctx->mgr_config.app_event_handler.user_data;

        wifi_prov_cb_func_t scheme_cb = prov_ctx->mgr_config.scheme_event_handler.event_cb;
        void *scheme_data = prov_ctx->mgr_config.scheme_event_handler.user_data;



        RELEASE_LOCK(prov_ctx_lock);

        if (scheme_cb) {

            scheme_cb(scheme_data, event_id, event_data);
        }

        if (app_cb) {

            app_cb(app_data, event_id, event_data);
        }

        if (esp_event_post(WIFI_PROV_EVENT, event_id,
                           event_data, event_data_size,
                           portMAX_DELAY) != ESP_OK) {
            ESP_LOGE(TAG, "Failed to post event %d to default event loop", event_id);
        }

        ACQUIRE_LOCK(prov_ctx_lock);
    }
}
