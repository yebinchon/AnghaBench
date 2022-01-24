#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  char* uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  scalar_t__ nvs_type_t ;
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  int int8_t ;
typedef  char* int64_t ;
typedef  int int32_t ;
typedef  int int16_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_NVS_TYPE_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READONLY ; 
 scalar_t__ NVS_TYPE_ANY ; 
 scalar_t__ NVS_TYPE_BLOB ; 
 scalar_t__ NVS_TYPE_I16 ; 
 scalar_t__ NVS_TYPE_I32 ; 
 scalar_t__ NVS_TYPE_I64 ; 
 scalar_t__ NVS_TYPE_I8 ; 
 scalar_t__ NVS_TYPE_STR ; 
 scalar_t__ NVS_TYPE_U16 ; 
 scalar_t__ NVS_TYPE_U32 ; 
 scalar_t__ NVS_TYPE_U64 ; 
 scalar_t__ NVS_TYPE_U8 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,char*,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,char*,size_t*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char const*,char**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char const*,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 scalar_t__ FUNC17 (char const*) ; 

__attribute__((used)) static esp_err_t FUNC18(const char *key, const char *str_type)
{
    nvs_handle_t nvs;
    esp_err_t err;

    nvs_type_t type = FUNC17(str_type);

    if (type == NVS_TYPE_ANY) {
        FUNC0(TAG, "Type '%s' is undefined", str_type);
        return ESP_ERR_NVS_TYPE_MISMATCH;
    }

    err = FUNC14(current_namespace, NVS_READONLY, &nvs);
    if (err != ESP_OK) {
        return err;
    }

    if (type == NVS_TYPE_I8) {
        int8_t value;
        err = FUNC8(nvs, key, &value);
        if (err == ESP_OK) {
            FUNC16("%d\n", value);
        }
    } else if (type == NVS_TYPE_U8) {
        uint8_t value;
        err = FUNC13(nvs, key, &value);
        if (err == ESP_OK) {
            FUNC16("%u\n", value);
        }
    } else if (type == NVS_TYPE_I16) {
        int16_t value;
        err = FUNC5(nvs, key, &value);
        if (err == ESP_OK) {
            FUNC16("%u\n", value);
        }
    } else if (type == NVS_TYPE_U16) {
        uint16_t value;
        if ((err = FUNC10(nvs, key, &value)) == ESP_OK) {
            FUNC16("%u\n", value);
        }
    } else if (type == NVS_TYPE_I32) {
        int32_t value;
        if ((err = FUNC6(nvs, key, &value)) == ESP_OK) {
            FUNC16("%d\n", value);
        }
    } else if (type == NVS_TYPE_U32) {
        uint32_t value;
        if ((err = FUNC11(nvs, key, &value)) == ESP_OK) {
            FUNC16("%u\n", value);
        }
    } else if (type == NVS_TYPE_I64) {
        int64_t value;
        if ((err = FUNC7(nvs, key, &value)) == ESP_OK) {
            FUNC16("%lld\n", value);
        }
    } else if (type == NVS_TYPE_U64) {
        uint64_t value;
        if ( (err = FUNC12(nvs, key, &value)) == ESP_OK) {
            FUNC16("%llu\n", value);
        }
    } else if (type == NVS_TYPE_STR) {
        size_t len;
        if ( (err = FUNC9(nvs, key, NULL, &len)) == ESP_OK) {
            char *str = (char *)FUNC2(len);
            if ( (err = FUNC9(nvs, key, str, &len)) == ESP_OK) {
                FUNC16("%s\n", str);
            }
            FUNC1(str);
        }
    } else if (type == NVS_TYPE_BLOB) {
        size_t len;
        if ( (err = FUNC4(nvs, key, NULL, &len)) == ESP_OK) {
            char *blob = (char *)FUNC2(len);
            if ( (err = FUNC4(nvs, key, blob, &len)) == ESP_OK) {
                FUNC15(blob, len);
            }
            FUNC1(blob);
        }
    }

    FUNC3(nvs);
    return err;
}