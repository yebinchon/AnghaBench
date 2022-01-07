
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha256_context ;


 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_MEMORY_MESSAGE (int ,unsigned char*,int,char*) ;
 int done_sem ;
 int mbedtls_sha256_finish_ret (int *,unsigned char*) ;
 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts_ret (int *,int) ;
 int mbedtls_sha256_update_ret (int *,unsigned char*,int) ;
 scalar_t__ one_hundred_bs ;
 int sha256_thousand_bs ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void tskRunSHA256Test(void *pvParameters)
{
    mbedtls_sha256_context sha256_ctx;
    unsigned char sha256[32];

    for (int i = 0; i < 1000; i++) {
        mbedtls_sha256_init(&sha256_ctx);
        TEST_ASSERT_EQUAL(0, mbedtls_sha256_starts_ret(&sha256_ctx, 0));
        for (int j = 0; j < 10; j++) {
            TEST_ASSERT_EQUAL(0, mbedtls_sha256_update_ret(&sha256_ctx, (unsigned char *)one_hundred_bs, 100));
        }
        TEST_ASSERT_EQUAL(0, mbedtls_sha256_finish_ret(&sha256_ctx, sha256));

        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(sha256_thousand_bs, sha256, 32, "SHA256 calculation");
    }
    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
