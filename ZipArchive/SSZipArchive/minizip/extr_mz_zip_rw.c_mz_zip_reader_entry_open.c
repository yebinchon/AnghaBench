
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int password_buf ;
struct TYPE_4__ {int entry_verified; char* password; scalar_t__ hash_algorithm; int cd_verified; scalar_t__ sign_required; int hash; int hash_digest_size; int raw; int zip_handle; TYPE_2__* file_info; int password_userdata; int (* password_cb ) (void*,int ,TYPE_2__*,char*,int) ;} ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {int flag; } ;


 scalar_t__ MZ_HASH_SHA1 ;
 scalar_t__ MZ_HASH_SHA256 ;
 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 scalar_t__ MZ_SIGN_ERROR ;
 scalar_t__ MZ_SUPPORT_ERROR ;
 int MZ_ZIP_FLAG_ENCRYPTED ;
 int mz_crypt_sha_begin (int ) ;
 int mz_crypt_sha_create (int *) ;
 int mz_crypt_sha_set_algorithm (int ,scalar_t__) ;
 scalar_t__ mz_zip_entry_is_open (int ) ;
 scalar_t__ mz_zip_entry_read_open (int ,int ,char const*) ;
 scalar_t__ mz_zip_reader_entry_get_first_hash (void*,scalar_t__*,int *) ;
 scalar_t__ mz_zip_reader_entry_has_sign (void*) ;
 scalar_t__ mz_zip_reader_entry_sign_verify (void*) ;
 scalar_t__ mz_zip_reader_is_open (TYPE_1__*) ;
 int stub1 (void*,int ,TYPE_2__*,char*,int) ;

int32_t mz_zip_reader_entry_open(void *handle)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    int32_t err = MZ_OK;
    const char *password = ((void*)0);
    char password_buf[120];


    reader->entry_verified = 0;

    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == ((void*)0))
        return MZ_PARAM_ERROR;


    if (mz_zip_entry_is_open(reader->zip_handle) == MZ_OK)
        return MZ_OK;

    password = reader->password;


    if ((reader->file_info->flag & MZ_ZIP_FLAG_ENCRYPTED) && (password == ((void*)0)) &&
        (reader->password_cb != ((void*)0)))
    {
        reader->password_cb(handle, reader->password_userdata, reader->file_info,
            password_buf, sizeof(password_buf));

        password = password_buf;
    }

    err = mz_zip_entry_read_open(reader->zip_handle, reader->raw, password);

    if (err != MZ_OK)
        return err;

    if (mz_zip_reader_entry_get_first_hash(handle, &reader->hash_algorithm, &reader->hash_digest_size) == MZ_OK)
    {
        mz_crypt_sha_create(&reader->hash);
        if (reader->hash_algorithm == MZ_HASH_SHA1)
            mz_crypt_sha_set_algorithm(reader->hash, MZ_HASH_SHA1);
        else if (reader->hash_algorithm == MZ_HASH_SHA256)
            mz_crypt_sha_set_algorithm(reader->hash, MZ_HASH_SHA256);
        else
            err = MZ_SUPPORT_ERROR;

        if (err == MZ_OK)
            mz_crypt_sha_begin(reader->hash);
    }
    else if (reader->sign_required && !reader->cd_verified)
        err = MZ_SIGN_ERROR;


    return err;
}
