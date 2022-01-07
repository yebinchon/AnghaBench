
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ esp_ping_t ;
typedef scalar_t__ esp_ping_handle_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int PING_CHECK (TYPE_1__*,char*,int ,int ) ;
 int PING_FLAGS_START ;
 int err ;

esp_err_t esp_ping_stop(esp_ping_handle_t hdl)
{
    esp_err_t ret = ESP_OK;
    esp_ping_t *ep = (esp_ping_t *)hdl;
    PING_CHECK(ep, "ping handle can't be null", err, ESP_ERR_INVALID_ARG);
    ep->flags &= ~PING_FLAGS_START;
    return ESP_OK;
err:
    return ret;
}
