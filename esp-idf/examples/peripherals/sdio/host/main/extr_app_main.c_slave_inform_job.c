
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int example_job_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int BIT (int ) ;
 int ESP_ERROR_CHECK (int ) ;
 int SLAVE_INTR_NOTIFY ;
 int SLAVE_REG_JOB ;
 int esp_slave_send_slave_intr (int *,int ) ;
 int esp_slave_write_reg (int *,int ,int ,int *) ;

__attribute__((used)) static inline esp_err_t slave_inform_job(esp_slave_context_t *context, example_job_t job)
{
    esp_err_t ret;
    ret = esp_slave_write_reg(context, SLAVE_REG_JOB, job, ((void*)0));
    ESP_ERROR_CHECK(ret);
    ret = esp_slave_send_slave_intr(context, BIT(SLAVE_INTR_NOTIFY));
    ESP_ERROR_CHECK(ret);
    return ret;
}
