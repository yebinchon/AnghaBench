
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef int output ;
typedef int mbedtls_sha256_context ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int TEST_ASSERT_EQUAL_MEMORY_MESSAGE (unsigned char*,unsigned char*,int,char*) ;
 int exit_flag ;
 int mbedtls_sha256_finish_ret (int *,unsigned char*) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts_ret (int *,int) ;
 int mbedtls_sha256_update_ret (int *,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void mbedtls_sha256_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    ESP_LOGI(TAG, "mbedtls_sha256_task is started");
    const char *input = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz~DEL0123456789Space!#$%&()*+,-.0123456789:;<=>?";
    mbedtls_sha256_context sha256_ctx;
    unsigned char output[32];
    unsigned char output_origin[32];

    mbedtls_sha256_init(&sha256_ctx);
    memset(output, 0, sizeof(output));
    mbedtls_sha256_starts_ret(&sha256_ctx, 0);
    for (int i = 0; i < 3; ++i) {
        mbedtls_sha256_update_ret(&sha256_ctx, (unsigned char *)input, 100);
    }
    mbedtls_sha256_finish_ret(&sha256_ctx, output);
    memcpy(output_origin, output, sizeof(output));

    while (exit_flag == 0) {
        mbedtls_sha256_init(&sha256_ctx);
        memset(output, 0, sizeof(output));
        mbedtls_sha256_starts_ret(&sha256_ctx, 0);
        for (int i = 0; i < 3; ++i) {
            mbedtls_sha256_update_ret(&sha256_ctx, (unsigned char *)input, 100);
        }
        mbedtls_sha256_finish_ret(&sha256_ctx, output);

        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(output, output_origin, sizeof(output), "MBEDTLS SHA256 must match");
    }
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
