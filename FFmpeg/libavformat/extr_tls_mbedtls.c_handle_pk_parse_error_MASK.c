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
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  MBEDTLS_ERR_PK_FILE_IO_ERROR 130 
#define  MBEDTLS_ERR_PK_PASSWORD_MISMATCH 129 
#define  MBEDTLS_ERR_PK_PASSWORD_REQUIRED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC1(URLContext *h, int ret)
{
    switch (ret) {
    case MBEDTLS_ERR_PK_FILE_IO_ERROR:
        FUNC0(h, AV_LOG_ERROR, "Read of key file failed. Is it actually there, are the access permissions correct?\n");
        break;
    case MBEDTLS_ERR_PK_PASSWORD_REQUIRED:
        FUNC0(h, AV_LOG_ERROR, "A password for the private key is missing.\n");
        break;
    case MBEDTLS_ERR_PK_PASSWORD_MISMATCH:
        FUNC0(h, AV_LOG_ERROR, "The given password for the private key is wrong.\n");
        break;
    default:
        FUNC0(h, AV_LOG_ERROR, "mbedtls_pk_parse_key returned -0x%x\n", -ret);
        break;
    }
}