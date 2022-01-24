#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {char const* cert_pwd; scalar_t__ cert_data_size; int /*<<< orphan*/ * cert_data; } ;
typedef  TYPE_1__ mz_zip_writer ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ MZ_READ_ERROR ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 scalar_t__ FUNC6 (void*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ *,scalar_t__) ; 

int32_t FUNC8(void *handle, const char *cert_path, const char *cert_pwd)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    void *cert_stream = NULL;
    uint8_t *cert_data = NULL;
    int32_t cert_data_size = 0;
    int32_t err = MZ_OK;

    if (cert_path == NULL)
        return MZ_PARAM_ERROR;

    cert_data_size = (int32_t)FUNC2(cert_path);

    if (cert_data_size == 0)
        return MZ_PARAM_ERROR;

    if (writer->cert_data != NULL)
    {
        FUNC1(writer->cert_data);
        writer->cert_data = NULL;
    }

    cert_data = (uint8_t *)FUNC0(cert_data_size);

    /* Read pkcs12 certificate from disk */
    FUNC4(&cert_stream);
    err = FUNC6(cert_stream, cert_path, MZ_OPEN_MODE_READ);
    if (err == MZ_OK)
    {
        if (FUNC7(cert_stream, cert_data, cert_data_size) != cert_data_size)
            err = MZ_READ_ERROR;
        FUNC3(cert_stream);
    }
    FUNC5(&cert_stream);

    if (err == MZ_OK)
    {
        writer->cert_data = cert_data;
        writer->cert_data_size = cert_data_size;
        writer->cert_pwd = cert_pwd;
    }
    else
    {
        FUNC1(cert_data);
    }

    return err;
}