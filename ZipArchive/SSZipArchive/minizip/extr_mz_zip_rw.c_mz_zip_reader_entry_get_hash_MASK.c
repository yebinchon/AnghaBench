#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {TYPE_1__* file_info; } ;
typedef  TYPE_2__ mz_zip_reader ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  extrafield_size; scalar_t__ extrafield; } ;

/* Variables and functions */
 scalar_t__ MZ_EXIST_ERROR ; 
 scalar_t__ MZ_HASH_MAX_SIZE ; 
 scalar_t__ MZ_OK ; 
 int /*<<< orphan*/  MZ_SEEK_CUR ; 
 int /*<<< orphan*/  MZ_ZIP_EXTENSION_HASH ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (void*,scalar_t__*) ; 
 scalar_t__ FUNC5 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int32_t FUNC7(void *handle, uint16_t algorithm, uint8_t *digest, int32_t digest_size)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    void *file_extra_stream = NULL;
    int32_t err = MZ_OK;
    int32_t return_err = MZ_EXIST_ERROR;
    uint16_t cur_algorithm = 0;
    uint16_t cur_digest_size = 0;

    FUNC0(&file_extra_stream);
    FUNC2(file_extra_stream, (void *)reader->file_info->extrafield,
        reader->file_info->extrafield_size);

    do
    {
        err = FUNC6(file_extra_stream, MZ_ZIP_EXTENSION_HASH, NULL);
        if (err != MZ_OK)
            break;

        err = FUNC4(file_extra_stream, &cur_algorithm);
        if (err == MZ_OK)
            err = FUNC4(file_extra_stream, &cur_digest_size);
        if ((err == MZ_OK) && (cur_algorithm == algorithm) && (cur_digest_size <= digest_size) &&
            (cur_digest_size <= MZ_HASH_MAX_SIZE))
        {
            /* Read hash digest */
            if (FUNC3(file_extra_stream, digest, digest_size) == cur_digest_size)
                return_err = MZ_OK;
            break;
        }
        else
        {
            err = FUNC5(file_extra_stream, cur_digest_size, MZ_SEEK_CUR);
        }
    }
    while (err == MZ_OK);

    FUNC1(&file_extra_stream);

    return return_err;
}