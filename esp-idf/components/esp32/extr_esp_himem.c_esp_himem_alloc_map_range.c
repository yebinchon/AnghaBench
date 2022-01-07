
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* esp_himem_rangehandle_t ;
struct TYPE_7__ {int block_ct; int block_start; } ;
typedef TYPE_1__ esp_himem_rangedata_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int is_alloced; } ;


 size_t CACHE_BLOCKSIZE ;
 int ESP_ERR_INVALID_SIZE ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int HIMEM_CHECK (int,char*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int * s_ram_descriptor ;
 TYPE_3__* s_range_descriptor ;
 int s_rangeblockcnt ;
 int spinlock ;

esp_err_t esp_himem_alloc_map_range(size_t size, esp_himem_rangehandle_t *handle_out)
{
    HIMEM_CHECK(s_ram_descriptor == ((void*)0), "Himem not available!", ESP_ERR_INVALID_STATE);
    HIMEM_CHECK(size % CACHE_BLOCKSIZE != 0, "requested size not aligned to blocksize", ESP_ERR_INVALID_SIZE);
    int blocks = size / CACHE_BLOCKSIZE;
    esp_himem_rangedata_t *r = calloc(sizeof(esp_himem_rangedata_t), 1);
    if (!r) {
        return ESP_ERR_NO_MEM;
    }
    r->block_ct = blocks;
    r->block_start = -1;
    int start_free = 0;
    portENTER_CRITICAL(&spinlock);
    for (int i = 0; i < s_rangeblockcnt; i++) {
        if (s_range_descriptor[i].is_alloced) {
            start_free = i + 1;
        } else if (i - start_free == blocks - 1) {

            r->block_start = start_free;
            break;
        }
    }

    if (r->block_start == -1) {

        free(r);
        portEXIT_CRITICAL(&spinlock);
        return ESP_ERR_NO_MEM;
    }

    for (int i = 0; i < blocks; i++) {
        s_range_descriptor[r->block_start + i].is_alloced = 1;
    }
    portEXIT_CRITICAL(&spinlock);

    *handle_out = r;
    return ESP_OK;
}
