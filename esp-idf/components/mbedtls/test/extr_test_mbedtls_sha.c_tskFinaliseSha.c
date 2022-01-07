
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; int result; int ctx; int ret; } ;
typedef TYPE_1__ finalise_sha_param_t ;


 int TEST_ASSERT_EQUAL (int ,int ) ;
 int mbedtls_sha256_finish_ret (int *,int ) ;
 int mbedtls_sha256_update_ret (int *,int ,int) ;
 int one_hundred_as ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void tskFinaliseSha(void *v_param)
{
    finalise_sha_param_t *param = (finalise_sha_param_t *)v_param;

    for (int i = 0; i < 5; i++) {
        TEST_ASSERT_EQUAL(0, mbedtls_sha256_update_ret(&param->ctx, one_hundred_as, 100));
    }

    param->ret = mbedtls_sha256_finish_ret(&param->ctx, param->result);
    param->done = 1;
    vTaskDelete(((void*)0));
}
