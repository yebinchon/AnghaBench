
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xSemaphoreHandle ;
typedef int output2 ;
typedef int output ;
typedef int input ;
struct TYPE_4__ {int key_bytes; int key; } ;
typedef TYPE_1__ esp_aes_context ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int TEST_ASSERT_EQUAL_MEMORY_MESSAGE (unsigned char const*,unsigned char*,int,char*) ;
 int esp_internal_aes_decrypt (TYPE_1__*,unsigned char*,unsigned char*) ;
 int esp_internal_aes_encrypt (TYPE_1__*,unsigned char const*,unsigned char*) ;
 int exit_flag ;
 int memset (unsigned char*,int ,int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void aes_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    ESP_LOGI(TAG, "aes_task is started");
    esp_aes_context ctx = {
            .key_bytes = 16,
            .key = {101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116}
    };
    const unsigned char input[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    unsigned char output[16];
    unsigned char output2[16];
    while (exit_flag == 0) {
        memset(output, 0, sizeof(output));
        memset(output, 0, sizeof(output2));
        esp_internal_aes_encrypt(&ctx, input, output);
        esp_internal_aes_decrypt(&ctx, output, output2);
        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(input, output2, sizeof(input), "AES must match");
    }
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
