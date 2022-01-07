
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int rval ;
struct TYPE_2__ {size_t word_count; scalar_t__ val; int done; int result; int seed; int filename; } ;
typedef TYPE_1__ read_test_arg_t ;
typedef int FILE ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_FAIL ;
 int ESP_OK ;
 int ets_printf (char*,size_t,int,scalar_t__,scalar_t__) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 int srand (int ) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void read_task(void* param)
{
    read_test_arg_t* args = (read_test_arg_t*) param;
    FILE* f = fopen(args->filename, "rb");
    if (f == ((void*)0)) {
        args->result = ESP_ERR_NOT_FOUND;
        goto done;
    }

    srand(args->seed);
    for (size_t i = 0; i < args->word_count; ++i) {
        uint32_t rval;
        int cnt = fread(&rval, sizeof(rval), 1, f);
        if (cnt != 1 || rval != args->val) {
            ets_printf("E(r): i=%d, cnt=%d rval=%d val=%d\n\n", i, cnt, rval, args->val);
            args->result = ESP_FAIL;
            goto close;
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
