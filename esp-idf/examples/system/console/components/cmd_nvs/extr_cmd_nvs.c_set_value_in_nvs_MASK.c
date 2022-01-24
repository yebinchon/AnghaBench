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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ nvs_type_t ;
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 scalar_t__ ESP_ERR_NVS_TYPE_MISMATCH ; 
 scalar_t__ ESP_ERR_NVS_VALUE_TOO_LONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ INT16_MAX ; 
 scalar_t__ INT16_MIN ; 
 scalar_t__ INT8_MAX ; 
 scalar_t__ INT8_MIN ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
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
 scalar_t__ UINT16_MAX ; 
 scalar_t__ UINT8_MAX ; 
 int /*<<< orphan*/  current_namespace ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC20(const char *key, const char *str_type, const char *str_value)
{
    esp_err_t err;
    nvs_handle_t nvs;
    bool range_error = false;

    nvs_type_t type = FUNC15(str_type);

    if (type == NVS_TYPE_ANY) {
        FUNC0(TAG, "Type '%s' is undefined", str_type);
        return ESP_ERR_NVS_TYPE_MISMATCH;
    }

    err = FUNC4(current_namespace, NVS_READWRITE, &nvs);
    if (err != ESP_OK) {
        return err;
    }

    if (type == NVS_TYPE_I8) {
        int32_t value = FUNC16(str_value, NULL, 0);
        if (value < INT8_MIN || value > INT8_MAX || errno == ERANGE) {
            range_error = true;
        } else {
            err = FUNC8(nvs, key, (int8_t)value);
        }
    } else if (type == NVS_TYPE_U8) {
        uint32_t value = FUNC18(str_value, NULL, 0);
        if (value > UINT8_MAX || errno == ERANGE) {
            range_error = true;
        } else {
            err = FUNC13(nvs, key, (uint8_t)value);
        }
    } else if (type == NVS_TYPE_I16) {
        int32_t value = FUNC16(str_value, NULL, 0);
        if (value < INT16_MIN || value > INT16_MAX || errno == ERANGE) {
            range_error = true;
        } else {
            err = FUNC5(nvs, key, (int16_t)value);
        }
    } else if (type == NVS_TYPE_U16) {
        uint32_t value = FUNC18(str_value, NULL, 0);
        if (value > UINT16_MAX || errno == ERANGE) {
            range_error = true;
        } else {
            err = FUNC10(nvs, key, (uint16_t)value);
        }
    } else if (type == NVS_TYPE_I32) {
        int32_t value = FUNC16(str_value, NULL, 0);
        if (errno != ERANGE) {
            err = FUNC6(nvs, key, value);
        }
    } else if (type == NVS_TYPE_U32) {
        uint32_t value = FUNC18(str_value, NULL, 0);
        if (errno != ERANGE) {
            err = FUNC11(nvs, key, value);
        }
    } else if (type == NVS_TYPE_I64) {
        int64_t value = FUNC17(str_value, NULL, 0);
        if (errno != ERANGE) {
            err = FUNC7(nvs, key, value);
        }
    } else if (type == NVS_TYPE_U64) {
        uint64_t value = FUNC19(str_value, NULL, 0);
        if (errno != ERANGE) {
            err = FUNC12(nvs, key, value);
        }
    } else if (type == NVS_TYPE_STR) {
        err = FUNC9(nvs, key, str_value);
    } else if (type == NVS_TYPE_BLOB) {
        err = FUNC14(nvs, key, str_value);
    }

    if (range_error || errno == ERANGE) {
        FUNC2(nvs);
        return ESP_ERR_NVS_VALUE_TOO_LONG;
    }

    if (err == ESP_OK) {
        err = FUNC3(nvs);
        if (err == ESP_OK) {
            FUNC1(TAG, "Value stored under key '%s'", key);
        }
    }

    FUNC2(nvs);
    return err;
}