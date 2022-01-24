#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct inst_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  esp_local_ctrl_prop_t ;
struct TYPE_9__ {int /*<<< orphan*/  set_prop_values; int /*<<< orphan*/  get_prop_values; } ;
struct TYPE_11__ {scalar_t__ max_properties; TYPE_2__* transport; int /*<<< orphan*/  transport_config; TYPE_1__ handlers; } ;
typedef  TYPE_3__ esp_local_ctrl_config_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_12__ {int max_properties; int /*<<< orphan*/  transport_config; } ;
struct TYPE_13__ {int /*<<< orphan*/  pc; TYPE_4__ config; void* props; } ;
struct TYPE_10__ {scalar_t__ (* copy_config ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* declare_ep ) (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ;scalar_t__ (* start_service ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  ESP_LOCAL_CTRL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  esp_local_ctrl_data_handler ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 TYPE_6__* local_ctrl_inst_ctx ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__ const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  protocomm_security0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

esp_err_t FUNC15(const esp_local_ctrl_config_t *config)
{
    esp_err_t ret;

    if (!config) {
        FUNC0(TAG, "NULL configuration provided");
        return ESP_ERR_INVALID_ARG;
    }

    if (!config->transport) {
        FUNC0(TAG, "No transport provided");
        return ESP_ERR_INVALID_ARG;
    }

    if (config->max_properties == 0) {
        FUNC0(TAG, "max_properties must be greater than 0");
        return ESP_ERR_INVALID_ARG;
    }

    if (!config->handlers.get_prop_values ||
        !config->handlers.set_prop_values) {
        FUNC0(TAG, "Handlers cannot be null");
        return ESP_ERR_INVALID_ARG;
    }

    if (local_ctrl_inst_ctx) {
        FUNC1(TAG, "Service already active");
        return ESP_ERR_INVALID_STATE;
    }

    local_ctrl_inst_ctx = FUNC2(1, sizeof(struct inst_ctx));
    if (!local_ctrl_inst_ctx) {
        FUNC0(TAG, "Failed to allocate memory for instance");
        return ESP_ERR_NO_MEM;
    }
    FUNC5(&local_ctrl_inst_ctx->config, config, sizeof(local_ctrl_inst_ctx->config));

    local_ctrl_inst_ctx->props = FUNC2(local_ctrl_inst_ctx->config.max_properties,
                                        sizeof(esp_local_ctrl_prop_t *));
    if (!local_ctrl_inst_ctx->props) {
        FUNC0(TAG, "Failed to allocate memory for properties");
        FUNC4(local_ctrl_inst_ctx);
        local_ctrl_inst_ctx = NULL;
        return ESP_ERR_NO_MEM;
    }

    /* Since the config structure will be different for different transport modes, each transport may
     * implement a `copy_config()` function, which accepts a configuration structure as input and
     * creates a copy of that, which can be kept in the context structure of the `esp_local_ctrl` instance.
     * This copy can be later be freed using `free_config()` */
    if (config->transport->copy_config) {
        ret = config->transport->copy_config(&local_ctrl_inst_ctx->config.transport_config,
                                             &config->transport_config);
        if (ret != ESP_OK) {
            FUNC3();
            return ret;
        }
    }

    /* For a selected transport mode, endpoints may need to be declared prior to starting the
     * `esp_local_ctrl` service, e.g. in case of BLE. By declaration it means that the transport layer
     * allocates some resources for an endpoint, and later, after service has started, a handler
     * is assigned for that endpoint */
    if (config->transport->declare_ep) {
        /* UUIDs are 16bit unique IDs for each endpoint. This may or may not be relevant for
         * a chosen transport. We reserve all values from FF50 to FFFF for the internal endpoints.
         * The remaining endpoints can be used by the application for its own custom endpoints */
        uint16_t start_uuid = 0xFF50;
        ret = config->transport->declare_ep(&local_ctrl_inst_ctx->config.transport_config,
                                            "esp_local_ctrl/version", start_uuid++);
        if (ret != ESP_OK) {
            FUNC3();
            return ret;
        }
        ret = config->transport->declare_ep(&local_ctrl_inst_ctx->config.transport_config,
                                            "esp_local_ctrl/session", start_uuid++);
        if (ret != ESP_OK) {
            FUNC3();
            return ret;
        }
        ret = config->transport->declare_ep(&local_ctrl_inst_ctx->config.transport_config,
                                            "esp_local_ctrl/control", start_uuid++);
        if (ret != ESP_OK) {
            FUNC3();
            return ret;
        }
    }

    local_ctrl_inst_ctx->pc = FUNC7();
    if (!local_ctrl_inst_ctx->pc) {
        FUNC0(TAG, "Failed to create new protocomm instance");
        FUNC3();
        return ESP_FAIL;
    }

    if (config->transport->start_service) {
        ret = config->transport->start_service(local_ctrl_inst_ctx->pc,
                                               &local_ctrl_inst_ctx->config.transport_config);
        if (ret != ESP_OK) {
            FUNC3();
            return ret;
        }
    }

    ret = FUNC9(local_ctrl_inst_ctx->pc, "esp_local_ctrl/version",
                                ESP_LOCAL_CTRL_VERSION);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Failed to set version endpoint");
        FUNC3();
        return ret;
    }

    ret = FUNC8(local_ctrl_inst_ctx->pc, "esp_local_ctrl/session",
                                 &protocomm_security0, NULL);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Failed to set session endpoint");
        FUNC3();
        return ret;
    }

    ret = FUNC6(local_ctrl_inst_ctx->pc, "esp_local_ctrl/control",
                                 esp_local_ctrl_data_handler, NULL);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Failed to set control endpoint");
        FUNC3();
        return ret;
    }
    return ESP_OK;
}