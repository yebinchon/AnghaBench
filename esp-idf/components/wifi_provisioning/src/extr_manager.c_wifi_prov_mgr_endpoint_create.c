
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_4__ {scalar_t__ (* set_config_endpoint ) (int ,char const*,scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__ scheme; } ;
struct TYPE_6__ {scalar_t__ prov_state; scalar_t__ endpoint_uuid_used; int prov_scheme_config; TYPE_2__ mgr_config; } ;


 int ACQUIRE_LOCK (int ) ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int RELEASE_LOCK (int ) ;
 int TAG ;
 scalar_t__ WIFI_PROV_STATE_IDLE ;
 TYPE_3__* prov_ctx ;
 int prov_ctx_lock ;
 scalar_t__ stub1 (int ,char const*,scalar_t__) ;

esp_err_t wifi_prov_mgr_endpoint_create(const char *ep_name)
{
    if (!prov_ctx_lock) {
        ESP_LOGE(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t err = ESP_FAIL;

    ACQUIRE_LOCK(prov_ctx_lock);
    if (prov_ctx &&
        prov_ctx->prov_state == WIFI_PROV_STATE_IDLE) {
        err = prov_ctx->mgr_config.scheme.set_config_endpoint(
                prov_ctx->prov_scheme_config, ep_name,
                prov_ctx->endpoint_uuid_used + 1);
    }
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to create additional endpoint");
    } else {
        prov_ctx->endpoint_uuid_used++;
    }
    RELEASE_LOCK(prov_ctx_lock);
    return err;
}
