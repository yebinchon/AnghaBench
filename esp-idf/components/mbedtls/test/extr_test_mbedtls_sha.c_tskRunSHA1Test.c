
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha1_context ;


 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_EQUAL_MEMORY_MESSAGE (int ,unsigned char*,int,char*) ;
 int done_sem ;
 int mbedtls_sha1_finish_ret (int *,unsigned char*) ;
 int mbedtls_sha1_init (int *) ;
 int mbedtls_sha1_starts_ret (int *) ;
 int mbedtls_sha1_update_ret (int *,unsigned char*,int) ;
 scalar_t__ one_hundred_as ;
 int sha1_thousand_as ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void tskRunSHA1Test(void *pvParameters)
{
    mbedtls_sha1_context sha1_ctx;
    unsigned char sha1[20];

    for (int i = 0; i < 1000; i++) {
        mbedtls_sha1_init(&sha1_ctx);
        TEST_ASSERT_EQUAL(0, mbedtls_sha1_starts_ret(&sha1_ctx));
        for (int j = 0; j < 10; j++) {
            TEST_ASSERT_EQUAL(0, mbedtls_sha1_update_ret(&sha1_ctx, (unsigned char *)one_hundred_as, 100));
        }
        TEST_ASSERT_EQUAL(0, mbedtls_sha1_finish_ret(&sha1_ctx, sha1));
        TEST_ASSERT_EQUAL_MEMORY_MESSAGE(sha1_thousand_as, sha1, 20, "SHA1 calculation");
    }
    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
