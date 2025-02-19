
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct inst_ctx {int dummy; } ;
typedef int esp_local_ctrl_prop_t ;
struct TYPE_9__ {int set_prop_values; int get_prop_values; } ;
struct TYPE_11__ {scalar_t__ max_properties; TYPE_2__* transport; int transport_config; TYPE_1__ handlers; } ;
typedef TYPE_3__ esp_local_ctrl_config_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_12__ {int max_properties; int transport_config; } ;
struct TYPE_13__ {int pc; TYPE_4__ config; void* props; } ;
struct TYPE_10__ {scalar_t__ (* copy_config ) (int *,int *) ;scalar_t__ (* declare_ep ) (int *,char*,int ) ;scalar_t__ (* start_service ) (int ,int *) ;} ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOCAL_CTRL_VERSION ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 void* calloc (int,int) ;
 int esp_local_ctrl_data_handler ;
 int esp_local_ctrl_stop () ;
 int free (TYPE_6__*) ;
 TYPE_6__* local_ctrl_inst_ctx ;
 int memcpy (TYPE_4__*,TYPE_3__ const*,int) ;
 scalar_t__ protocomm_add_endpoint (int ,char*,int ,int *) ;
 int protocomm_new () ;
 int protocomm_security0 ;
 scalar_t__ protocomm_set_security (int ,char*,int *,int *) ;
 scalar_t__ protocomm_set_version (int ,char*,int ) ;
 scalar_t__ stub1 (int *,int *) ;
 scalar_t__ stub2 (int *,char*,int ) ;
 scalar_t__ stub3 (int *,char*,int ) ;
 scalar_t__ stub4 (int *,char*,int ) ;
 scalar_t__ stub5 (int ,int *) ;

esp_err_t esp_local_ctrl_start(const esp_local_ctrl_config_t *config)
{
    esp_err_t ret;

    if (!config) {
        ESP_LOGE(TAG, "NULL configuration provided");
        return ESP_ERR_INVALID_ARG;
    }

    if (!config->transport) {
        ESP_LOGE(TAG, "No transport provided");
        return ESP_ERR_INVALID_ARG;
    }

    if (config->max_properties == 0) {
        ESP_LOGE(TAG, "max_properties must be greater than 0");
        return ESP_ERR_INVALID_ARG;
    }

    if (!config->handlers.get_prop_values ||
        !config->handlers.set_prop_values) {
        ESP_LOGE(TAG, "Handlers cannot be null");
        return ESP_ERR_INVALID_ARG;
    }

    if (local_ctrl_inst_ctx) {
        ESP_LOGW(TAG, "Service already active");
        return ESP_ERR_INVALID_STATE;
    }

    local_ctrl_inst_ctx = calloc(1, sizeof(struct inst_ctx));
    if (!local_ctrl_inst_ctx) {
        ESP_LOGE(TAG, "Failed to allocate memory for instance");
        return ESP_ERR_NO_MEM;
    }
    memcpy(&local_ctrl_inst_ctx->config, config, sizeof(local_ctrl_inst_ctx->config));

    local_ctrl_inst_ctx->props = calloc(local_ctrl_inst_ctx->config.max_properties,
                                        sizeof(esp_local_ctrl_prop_t *));
    if (!local_ctrl_inst_ctx->props) {
        ESP_LOGE(TAG, "Failed to allocate memory for properties");
        free(local_ctrl_inst_ctx);
        local_ctrl_inst_ctx = ((void*)0);
        return ESP_ERR_NO_MEM;
    }





    if (config->transport->copy_config) {
        ret = config->transport->copy_config(&local_ctrl_inst_ctx->config.transport_config,
                                             &config->transport_config);
        if (ret != ESP_OK) {
            esp_local_ctrl_stop();
            return ret;
        }
    }





    if (config->transport->declare_ep) {



        uint16_t start_uuid = 0xFF50;
        ret = config->transport->declare_ep(&local_ctrl_inst_ctx->config.transport_config,
                                            "esp_local_ctrl/version", start_uuid++);
        if (ret != ESP_OK) {
            esp_local_ctrl_stop();
            return ret;
        }
        ret = config->transport->declare_ep(&local_ctrl_inst_ctx->config.transport_config,
                                            "esp_local_ctrl/session", start_uuid++);
        if (ret != ESP_OK) {
            esp_local_ctrl_stop();
            return ret;
        }
        ret = config->transport->declare_ep(&local_ctrl_inst_ctx->config.transport_config,
                                            "esp_local_ctrl/control", start_uuid++);
        if (ret != ESP_OK) {
            esp_local_ctrl_stop();
            return ret;
        }
    }

    local_ctrl_inst_ctx->pc = protocomm_new();
    if (!local_ctrl_inst_ctx->pc) {
        ESP_LOGE(TAG, "Failed to create new protocomm instance");
        esp_local_ctrl_stop();
        return ESP_FAIL;
    }

    if (config->transport->start_service) {
        ret = config->transport->start_service(local_ctrl_inst_ctx->pc,
                                               &local_ctrl_inst_ctx->config.transport_config);
        if (ret != ESP_OK) {
            esp_local_ctrl_stop();
            return ret;
        }
    }

    ret = protocomm_set_version(local_ctrl_inst_ctx->pc, "esp_local_ctrl/version",
                                ESP_LOCAL_CTRL_VERSION);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set version endpoint");
        esp_local_ctrl_stop();
        return ret;
    }

    ret = protocomm_set_security(local_ctrl_inst_ctx->pc, "esp_local_ctrl/session",
                                 &protocomm_security0, ((void*)0));
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set session endpoint");
        esp_local_ctrl_stop();
        return ret;
    }

    ret = protocomm_add_endpoint(local_ctrl_inst_ctx->pc, "esp_local_ctrl/control",
                                 esp_local_ctrl_data_handler, ((void*)0));
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set control endpoint");
        esp_local_ctrl_stop();
        return ret;
    }
    return ESP_OK;
}
