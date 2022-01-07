
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int password_buf ;
struct TYPE_7__ {int flag; int version_madeby; int external_fa; } ;
struct TYPE_6__ {char* password; int raw; int compress_level; TYPE_2__ file_info; int zip_handle; int sha256; int password_userdata; int (* password_cb ) (void*,int ,TYPE_2__*,char*,int) ;int entry_userdata; int (* entry_cb ) (void*,int ,TYPE_2__*) ;} ;
typedef TYPE_1__ mz_zip_writer ;
typedef int mz_zip_file ;
typedef scalar_t__ int32_t ;


 int MZ_HASH_SHA256 ;
 scalar_t__ MZ_OK ;
 int MZ_ZIP_FLAG_ENCRYPTED ;
 int memcpy (TYPE_2__*,int *,int) ;
 int mz_crypt_sha_begin (int ) ;
 int mz_crypt_sha_create (int *) ;
 int mz_crypt_sha_set_algorithm (int ,int ) ;
 scalar_t__ mz_zip_attrib_is_dir (int ,int ) ;
 scalar_t__ mz_zip_entry_write_open (int ,TYPE_2__*,int ,int ,char const*) ;
 int stub1 (void*,int ,TYPE_2__*) ;
 int stub2 (void*,int ,TYPE_2__*,char*,int) ;

int32_t mz_zip_writer_entry_open(void *handle, mz_zip_file *file_info)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t err = MZ_OK;
    const char *password = ((void*)0);
    char password_buf[120];


    memcpy(&writer->file_info, file_info, sizeof(mz_zip_file));

    if (writer->entry_cb != ((void*)0))
        writer->entry_cb(handle, writer->entry_userdata, &writer->file_info);

    password = writer->password;


    if ((writer->file_info.flag & MZ_ZIP_FLAG_ENCRYPTED) && (password == ((void*)0)) &&
        (writer->password_cb != ((void*)0)))
    {
        writer->password_cb(handle, writer->password_userdata, &writer->file_info,
            password_buf, sizeof(password_buf));
        password = password_buf;
    }


    if (mz_zip_attrib_is_dir(writer->file_info.external_fa, writer->file_info.version_madeby) != MZ_OK)
    {

        mz_crypt_sha_create(&writer->sha256);
        mz_crypt_sha_set_algorithm(writer->sha256, MZ_HASH_SHA256);
        mz_crypt_sha_begin(writer->sha256);
    }



    err = mz_zip_entry_write_open(writer->zip_handle, &writer->file_info, writer->compress_level,
        writer->raw, password);

    return err;
}
