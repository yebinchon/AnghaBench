
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int uint32_t ;
typedef int rval ;
struct TYPE_2__ {size_t word_count; int done; void* result; scalar_t__ offset; int handle; scalar_t__ write; int seed; } ;
typedef TYPE_1__ read_write_test_arg_t ;
typedef void* esp_err_t ;


 void* ESP_FAIL ;
 void* ESP_OK ;
 int ets_printf (char*,size_t,size_t,int ,int ) ;
 int rand () ;
 int srand (int ) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 void* wl_read (int ,scalar_t__,int *,int) ;
 void* wl_write (int ,scalar_t__,int *,int) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void read_write_task(void* param)
{
    read_write_test_arg_t* args = (read_write_test_arg_t*) param;
    esp_err_t err;
    srand(args->seed);
    for (size_t i = 0; i < args->word_count; ++i) {
        uint32_t val = rand();
        if (args->write) {
            err = wl_write(args->handle, args->offset + i * sizeof(val), &val, sizeof(val));
            if (err != ESP_OK) {
                args->result = err;
                goto done;
            }
        } else {
            uint32_t rval;
            err = wl_read(args->handle, args->offset + i * sizeof(rval), &rval, sizeof(rval));
            if (err != ESP_OK || rval != val) {
                ets_printf("E: i=%d, cnt=%d rval=%d val=%d\n\n", i, args->word_count, rval, val);
                args->result = ESP_FAIL;
                goto done;
            }
        }
    }
    args->result = ESP_OK;

done:
    xSemaphoreGive(args->done);
    vTaskDelay(1);
    vTaskDelete(((void*)0));
}
