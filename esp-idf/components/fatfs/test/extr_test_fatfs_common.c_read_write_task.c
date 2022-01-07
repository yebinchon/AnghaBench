
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef scalar_t__ uint32_t ;
typedef int rval ;
struct TYPE_2__ {size_t word_count; int done; void* result; scalar_t__ write; int seed; int filename; } ;
typedef TYPE_1__ read_write_test_arg_t ;
typedef int FILE ;


 void* ESP_ERR_NOT_FOUND ;
 void* ESP_FAIL ;
 void* ESP_OK ;
 int ets_printf (char*,size_t,int,scalar_t__,...) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 int fwrite (scalar_t__*,int,int,int *) ;
 scalar_t__ rand () ;
 int srand (int ) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void read_write_task(void* param)
{
    read_write_test_arg_t* args = (read_write_test_arg_t*) param;
    FILE* f = fopen(args->filename, args->write ? "wb" : "rb");
    if (f == ((void*)0)) {
        args->result = ESP_ERR_NOT_FOUND;
        goto done;
    }

    srand(args->seed);
    for (size_t i = 0; i < args->word_count; ++i) {
        uint32_t val = rand();
        if (args->write) {
            int cnt = fwrite(&val, sizeof(val), 1, f);
            if (cnt != 1) {
                ets_printf("E(w): i=%d, cnt=%d val=%d\n\n", i, cnt, val);
                args->result = ESP_FAIL;
                goto close;
            }
        } else {
            uint32_t rval;
            int cnt = fread(&rval, sizeof(rval), 1, f);
            if (cnt != 1 || rval != val) {
                ets_printf("E(r): i=%d, cnt=%d rval=%d val=%d\n\n", i, cnt, rval, val);
                args->result = ESP_FAIL;
                goto close;
            }
        }
    }
    args->result = ESP_OK;

close:
    fclose(f);

done:
    xSemaphoreGive(args->done);
    vTaskDelay(1);
    vTaskDelete(((void*)0));
}
