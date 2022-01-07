
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* esp_himem_rangehandle_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int is_alloced; int is_mapped; } ;
struct TYPE_5__ {int block_ct; int block_start; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int HIMEM_CHECK (int ,char*,int ) ;
 int assert (int) ;
 int free (TYPE_1__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rangeblock_idx_valid (int) ;
 TYPE_2__* s_range_descriptor ;
 int spinlock ;

esp_err_t esp_himem_free_map_range(esp_himem_rangehandle_t handle)
{

    for (int i = 0; i < handle->block_ct; i++) {
        assert(rangeblock_idx_valid(handle->block_start + i));
        assert(s_range_descriptor[i + handle->block_start].is_alloced == 1);
        HIMEM_CHECK(s_range_descriptor[i + handle->block_start].is_mapped, "memory still mapped to range", ESP_ERR_INVALID_ARG);
    }

    portENTER_CRITICAL(&spinlock);
    for (int i = 0; i < handle->block_ct; i++) {
        s_range_descriptor[i + handle->block_start].is_alloced = 0;
    }
    portEXIT_CRITICAL(&spinlock);
    free(handle);
    return ESP_OK;
}
