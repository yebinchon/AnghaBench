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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_OPEN_MODE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 scalar_t__ FUNC4 (void*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ *,int) ; 

int32_t FUNC6(const char *path, uint32_t *result_crc)
{
    void *stream = NULL;
    uint32_t crc32 = 0;
    int32_t read = 0;
    int32_t err = MZ_OK;
    uint8_t buf[16384];

    FUNC2(&stream);

    err = FUNC4(stream, path, MZ_OPEN_MODE_READ);

    if (err == MZ_OK)
    {
        do
        {
            read = FUNC5(stream, buf, sizeof(buf));

            if (read < 0)
            {
                err = read;
                break;
            }

            crc32 = FUNC0(crc32, buf, read);
        }
        while ((err == MZ_OK) && (read > 0));

        FUNC1(stream);
    }

    *result_crc = crc32;

    FUNC3(&stream);

    return err;
}