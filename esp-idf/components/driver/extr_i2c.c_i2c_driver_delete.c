
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t i2c_port_t ;
struct TYPE_7__ {struct TYPE_7__* evt_queue_storage; int * pm_lock; scalar_t__ tx_buf_length; int * tx_ring_buf; scalar_t__ rx_buf_length; int * rx_ring_buf; scalar_t__ slv_tx_mux; scalar_t__ slv_rx_mux; int * cmd_evt_queue; scalar_t__ cmd_mux; int * intr_handle; } ;
typedef TYPE_2__ i2c_obj_t ;
typedef int esp_err_t ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_8__ {TYPE_1__ int_ena; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_OK ;
 TYPE_5__** I2C ;
 int I2C_CHECK (int,int ,int ) ;
 int I2C_DRIVER_ERR_STR ;
 int I2C_NUM_ERROR_STR ;
 size_t I2C_NUM_MAX ;
 int esp_intr_free (int *) ;
 int esp_pm_lock_delete (int *) ;
 int free (TYPE_2__*) ;
 int i2c_hw_disable (size_t) ;
 TYPE_2__** p_i2c_obj ;
 int portMAX_DELAY ;
 int vQueueDelete (int *) ;
 int vRingbufferDelete (int *) ;
 int vSemaphoreDelete (scalar_t__) ;
 int xSemaphoreTake (scalar_t__,int ) ;

esp_err_t i2c_driver_delete(i2c_port_t i2c_num)
{
    I2C_CHECK(i2c_num < I2C_NUM_MAX, I2C_NUM_ERROR_STR, ESP_ERR_INVALID_ARG);
    I2C_CHECK(p_i2c_obj[i2c_num] != ((void*)0), I2C_DRIVER_ERR_STR, ESP_FAIL);

    i2c_obj_t* p_i2c = p_i2c_obj[i2c_num];

    I2C[i2c_num]->int_ena.val = 0;
    esp_intr_free(p_i2c->intr_handle);
    p_i2c->intr_handle = ((void*)0);

    if (p_i2c->cmd_mux) {
        xSemaphoreTake(p_i2c->cmd_mux, portMAX_DELAY);
        vSemaphoreDelete(p_i2c->cmd_mux);
    }
    if (p_i2c_obj[i2c_num]->cmd_evt_queue) {
        vQueueDelete(p_i2c_obj[i2c_num]->cmd_evt_queue);
        p_i2c_obj[i2c_num]->cmd_evt_queue = ((void*)0);
    }
    if (p_i2c->slv_rx_mux) {
        vSemaphoreDelete(p_i2c->slv_rx_mux);
    }
    if (p_i2c->slv_tx_mux) {
        vSemaphoreDelete(p_i2c->slv_tx_mux);
    }

    if (p_i2c->rx_ring_buf) {
        vRingbufferDelete(p_i2c->rx_ring_buf);
        p_i2c->rx_ring_buf = ((void*)0);
        p_i2c->rx_buf_length = 0;
    }
    if (p_i2c->tx_ring_buf) {
        vRingbufferDelete(p_i2c->tx_ring_buf);
        p_i2c->tx_ring_buf = ((void*)0);
        p_i2c->tx_buf_length = 0;
    }
    free(p_i2c_obj[i2c_num]);
    p_i2c_obj[i2c_num] = ((void*)0);

    i2c_hw_disable(i2c_num);
    return ESP_OK;
}
