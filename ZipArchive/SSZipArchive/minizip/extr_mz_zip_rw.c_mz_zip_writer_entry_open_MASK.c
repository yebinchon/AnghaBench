#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  password_buf ;
struct TYPE_7__ {int flag; int /*<<< orphan*/  version_madeby; int /*<<< orphan*/  external_fa; } ;
struct TYPE_6__ {char* password; int /*<<< orphan*/  raw; int /*<<< orphan*/  compress_level; TYPE_2__ file_info; int /*<<< orphan*/  zip_handle; int /*<<< orphan*/  sha256; int /*<<< orphan*/  password_userdata; int /*<<< orphan*/  (* password_cb ) (void*,int /*<<< orphan*/ ,TYPE_2__*,char*,int) ;int /*<<< orphan*/  entry_userdata; int /*<<< orphan*/  (* entry_cb ) (void*,int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  TYPE_1__ mz_zip_writer ;
typedef  int /*<<< orphan*/  mz_zip_file ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_HASH_SHA256 ; 
 scalar_t__ MZ_OK ; 
 int MZ_ZIP_FLAG_ENCRYPTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,TYPE_2__*,char*,int) ; 

int32_t FUNC8(void *handle, mz_zip_file *file_info)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t err = MZ_OK;
    const char *password = NULL;
    char password_buf[120];

    /* Copy file info to access data upon close */
    FUNC0(&writer->file_info, file_info, sizeof(mz_zip_file));

    if (writer->entry_cb != NULL)
        writer->entry_cb(handle, writer->entry_userdata, &writer->file_info);

    password = writer->password;

    /* Check if we need a password and ask for it if we need to */
    if ((writer->file_info.flag & MZ_ZIP_FLAG_ENCRYPTED) && (password == NULL) &&
        (writer->password_cb != NULL))
    {
        writer->password_cb(handle, writer->password_userdata, &writer->file_info,
            password_buf, sizeof(password_buf));
        password = password_buf;
    }

#ifndef MZ_ZIP_NO_ENCRYPTION
    if (FUNC4(writer->file_info.external_fa, writer->file_info.version_madeby) != MZ_OK)
    {
        /* Start calculating sha256 */
        FUNC2(&writer->sha256);
        FUNC3(writer->sha256, MZ_HASH_SHA256);
        FUNC1(writer->sha256);
    }
#endif

    /* Open entry in zip */
    err = FUNC5(writer->zip_handle, &writer->file_info, writer->compress_level,
        writer->raw, password);

    return err;
}