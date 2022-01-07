
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int session_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {scalar_t__ (* cleanup ) (int ) ;} ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int sec_inst ;
 scalar_t__ stub1 (int ) ;
 TYPE_1__* test_sec ;

__attribute__((used)) static esp_err_t test_delete_session(session_t *session)
{
    if (!test_sec) {
        return ESP_ERR_INVALID_STATE;
    }

    if (test_sec->cleanup && (test_sec->cleanup(sec_inst) != ESP_OK)) {
        return ESP_FAIL;
    }
    return ESP_OK;
}
