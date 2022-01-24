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
typedef  int /*<<< orphan*/  ux ;
typedef  int /*<<< orphan*/  uu ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_HASH_SHA1 ; 
 int MZ_HASH_SHA1_SIZE ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ *,int) ; 

int32_t  FUNC8(uint8_t *password, int32_t password_length, uint8_t *salt,
    int32_t salt_length, int32_t iteration_count, uint8_t *key, int32_t key_length)
{
    void *hmac1 = NULL;
    void *hmac2 = NULL;
    void *hmac3 = NULL;
    int32_t err = MZ_OK;
    uint16_t i = 0;
    uint16_t j = 0;
    uint16_t k = 0;
    uint16_t block_count = 0;
    uint8_t uu[MZ_HASH_SHA1_SIZE];
    uint8_t ux[MZ_HASH_SHA1_SIZE];

    if (password == NULL || salt == NULL || key == NULL)
        return MZ_PARAM_ERROR;

    FUNC0(key, 0, key_length);

    FUNC2(&hmac1);
    FUNC2(&hmac2);
    FUNC2(&hmac3);

    FUNC6(hmac1, MZ_HASH_SHA1);
    FUNC6(hmac2, MZ_HASH_SHA1);
    FUNC6(hmac3, MZ_HASH_SHA1);

    err = FUNC5(hmac1, password, password_length);
    if (err == MZ_OK)
        err = FUNC5(hmac2, password, password_length);
    if (err == MZ_OK)
        err = FUNC7(hmac2, salt, salt_length);

    block_count = 1 + ((uint16_t)key_length - 1) / MZ_HASH_SHA1_SIZE;

    for (i = 0; (err == MZ_OK) && (i < block_count); i += 1)
    {
        FUNC0(ux, 0, sizeof(ux));

        err = FUNC1(hmac2, hmac3);
        if (err != MZ_OK)
            break;

        uu[0] = (uint8_t)((i + 1) >> 24);
        uu[1] = (uint8_t)((i + 1) >> 16);
        uu[2] = (uint8_t)((i + 1) >> 8);
        uu[3] = (uint8_t)(i + 1);

        for (j = 0, k = 4; j < iteration_count; j += 1)
        {
            err = FUNC7(hmac3, uu, k);
            if (err == MZ_OK)
                err = FUNC4(hmac3, uu, sizeof(uu));
            if (err != MZ_OK)
                break;

            for(k = 0; k < MZ_HASH_SHA1_SIZE; k += 1)
                ux[k] ^= uu[k];

            err = FUNC1(hmac1, hmac3);
            if (err != MZ_OK)
                break;
        }

        if (err != MZ_OK)
            break;

        j = 0;
        k = i * MZ_HASH_SHA1_SIZE;

        while (j < MZ_HASH_SHA1_SIZE && k < key_length)
            key[k++] = ux[j++];
    }

    /* hmac3 uses the same provider as hmac2, so it must be deleted
       before the context is destroyed. */
    FUNC3(&hmac3);
    FUNC3(&hmac1);
    FUNC3(&hmac2);

    return err;
}