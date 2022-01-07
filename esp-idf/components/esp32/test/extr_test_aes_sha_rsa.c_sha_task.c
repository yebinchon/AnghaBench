
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef int output ;
typedef int input ;


 int ESP_LOGI (int ,char*) ;
 int SHA2_512 ;
 int TAG ;
 int TEST_ASSERT_EQUAL_MEMORY_MESSAGE (unsigned char*,unsigned char*,int,char*) ;
 int esp_sha (int ,unsigned char const*,int,unsigned char*) ;
 int exit_flag ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void sha_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    ESP_LOGI(TAG, "sha_task is started");
    const char *input = "Space!#$%&()*+,-.0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz~DEL0123456789";
    unsigned char output[64];
    unsigned char output_origin[64];
    esp_sha(SHA2_512, (const unsigned char *)input, sizeof(input), output);
    memcpy(output_origin, output, sizeof(output));
    while (exit_flag == 0) {
        memset(output, 0, sizeof(output));
        esp_sha(SHA2_512, (const unsigned char *)input, sizeof(input), output);
        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(output, output_origin, sizeof(output), "SHA256 must match");
    }
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
