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
struct TYPE_2__ {int /*<<< orphan*/  aes; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_AES_DECRYPT ; 
 TYPE_1__* blufi_sec ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC2(uint8_t iv8, uint8_t *crypt_data, int crypt_len)
{
    int ret;
    size_t iv_offset = 0;
    uint8_t iv0[16];

    FUNC1(iv0, blufi_sec->iv, sizeof(blufi_sec->iv));
    iv0[0] = iv8;   /* set iv8 as the iv0[0] */

    ret = FUNC0(&blufi_sec->aes, MBEDTLS_AES_DECRYPT, crypt_len, &iv_offset, iv0, crypt_data, crypt_data);
    if (ret) {
        return -1;
    }

    return crypt_len;
}