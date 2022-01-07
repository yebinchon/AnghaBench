
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_himem_rangehandle_t ;
typedef int esp_himem_handle_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_HIMEM_BLKSZ ;
 int check_mem_seed (int,int *,int,int) ;
 int esp_himem_alloc (int,int *) ;
 int esp_himem_alloc_map_range (int,int *) ;
 int esp_himem_free (int ) ;
 int esp_himem_free_map_range (int ) ;
 int esp_himem_map (int ,int ,int,int ,int,int ,void**) ;
 int esp_himem_unmap (int ,int *,int) ;
 int fill_mem_seed (int,int *,int) ;
 int printf (char*,int) ;
 int vTaskDelay (int) ;

__attribute__((used)) static bool test_region(int check_size, int seed)
{
    esp_himem_handle_t mh;
    esp_himem_rangehandle_t rh;
    bool ret = 1;


    ESP_ERROR_CHECK(esp_himem_alloc(check_size, &mh));

    ESP_ERROR_CHECK(esp_himem_alloc_map_range(ESP_HIMEM_BLKSZ, &rh));
    for (int i = 0; i < check_size; i += ESP_HIMEM_BLKSZ) {
        uint32_t *ptr = ((void*)0);

        ESP_ERROR_CHECK(esp_himem_map(mh, rh, i, 0, ESP_HIMEM_BLKSZ, 0, (void**)&ptr));
        fill_mem_seed(i ^ seed, ptr, ESP_HIMEM_BLKSZ);
        ESP_ERROR_CHECK(esp_himem_unmap(rh, ptr, ESP_HIMEM_BLKSZ));
    }
    vTaskDelay(5);
    for (int i = 0; i < check_size; i += ESP_HIMEM_BLKSZ) {
        uint32_t *ptr;

        ESP_ERROR_CHECK(esp_himem_map(mh, rh, i, 0, ESP_HIMEM_BLKSZ, 0, (void**)&ptr));
        if (!check_mem_seed(i ^ seed, ptr, ESP_HIMEM_BLKSZ, i)) {
            printf("Error in block %d\n", i / ESP_HIMEM_BLKSZ);
            ret = 0;
        }
        ESP_ERROR_CHECK(esp_himem_unmap(rh, ptr, ESP_HIMEM_BLKSZ));
        if (!ret) break;
    }

    ESP_ERROR_CHECK(esp_himem_free(mh));
    ESP_ERROR_CHECK(esp_himem_free_map_range(rh));
    return ret;
}
