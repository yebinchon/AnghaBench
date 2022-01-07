
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done_sem ;
 scalar_t__ mbedtls_sha1_self_test (int) ;
 scalar_t__ mbedtls_sha256_self_test (int) ;
 scalar_t__ mbedtls_sha512_self_test (int) ;
 int printf (char*) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

void tskRunSHASelftests(void *param)
{
    for (int i = 0; i < 5; i++) {
        if(mbedtls_sha1_self_test(1)) {
            printf("SHA1 self-tests failed.\n");
            while(1) {}
        }

        if(mbedtls_sha256_self_test(1)) {
            printf("SHA256 self-tests failed.\n");
            while(1) {}
        }

        if(mbedtls_sha512_self_test(1)) {
            printf("SHA512 self-tests failed.\n");
            while(1) {}
        }

        if(mbedtls_sha512_self_test(1)) {
            printf("SHA512 self-tests failed.\n");
            while(1) {}
        }
    }
    xSemaphoreGive(done_sem);
    vTaskDelete(((void*)0));
}
