#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ssize_t ;
struct TYPE_3__ {int sec_ver; int /*<<< orphan*/  stb; int /*<<< orphan*/  rand; int /*<<< orphan*/  nc_off; int /*<<< orphan*/  ctx_aes; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ session_t ;
typedef  int /*<<< orphan*/  rand_test_data ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  enc_test_data ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  test_pc ; 

__attribute__((used)) static esp_err_t FUNC10(session_t *session)
{
    uint32_t session_id = session->id;

    uint8_t rand_test_data[512], enc_test_data[512];
    FUNC3(rand_test_data, sizeof(rand_test_data), 0);

    if (session->sec_ver == 0) {
        FUNC8(enc_test_data, rand_test_data, sizeof(rand_test_data));
    }
    else if (session->sec_ver == 1) {
        FUNC6(&session->ctx_aes, sizeof(rand_test_data), &session->nc_off,
                              session->rand, session->stb, rand_test_data, enc_test_data);
    }

    ssize_t  verify_data_len = 0;
    uint8_t *enc_verify_data = NULL;

    esp_err_t ret = FUNC9(test_pc, "test-ep", session_id,
                                         enc_test_data, sizeof(enc_test_data),
                                         &enc_verify_data, &verify_data_len);

    if (ret != ESP_OK || !verify_data_len) {
        FUNC0(TAG, "test-ep handler failed");
        return ESP_FAIL;
    }

    uint8_t *verify_data = FUNC5(verify_data_len);
    if (!verify_data) {
        FUNC0(TAG, "error allocating memory for decrypted data");
        FUNC2(enc_verify_data);
        return ESP_FAIL;
    }

    if (session->sec_ver == 0) {
        FUNC8(verify_data, enc_verify_data, verify_data_len);
    }
    else if (session->sec_ver == 1) {
        FUNC6(&session->ctx_aes, verify_data_len, &session->nc_off,
                              session->rand, session->stb, enc_verify_data, verify_data);
    }
    FUNC2(enc_verify_data);

    FUNC4("Sent data", rand_test_data, sizeof(rand_test_data));
    FUNC4("Recv data", verify_data,    verify_data_len);

    FUNC1(TAG, "verify data len   : %d", verify_data_len);
    FUNC1(TAG, "expected data len : %d", sizeof(rand_test_data));

    if (verify_data_len != sizeof(rand_test_data)) {
        FUNC0(TAG, "incorrect response length from test-ep");
        FUNC2(verify_data);
        return ESP_FAIL;
    }
    if (FUNC7(rand_test_data, verify_data, verify_data_len)) {
        FUNC0(TAG, "incorrect response data from test-ep");
        FUNC2(verify_data);
        return ESP_FAIL;
    }
    FUNC2(verify_data);
    return ESP_OK;
}