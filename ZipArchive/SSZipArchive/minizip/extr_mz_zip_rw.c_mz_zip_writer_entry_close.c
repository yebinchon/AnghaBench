
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int sha256 ;
struct TYPE_3__ {scalar_t__ extrafield_size; int crc; int uncompressed_size; int * extrafield; int filename; } ;
struct TYPE_4__ {scalar_t__ cert_data_size; int zip_handle; TYPE_1__ file_info; scalar_t__ raw; int file_extra_stream; int cert_pwd; int * cert_data; int zip_cd; int * sha256; } ;
typedef TYPE_2__ mz_zip_writer ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;


 int MZ_HASH_SHA256 ;
 int MZ_HASH_SHA256_SIZE ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_CREATE ;
 scalar_t__ MZ_WRITE_ERROR ;
 int MZ_ZIP_CD_FILENAME ;
 int MZ_ZIP_EXTENSION_HASH ;
 int mz_crypt_sha_delete (int **) ;
 int mz_crypt_sha_end (int *,int *,int) ;
 int mz_stream_mem_create (int *) ;
 int mz_stream_mem_get_buffer (int ,void const**) ;
 int mz_stream_mem_get_buffer_length (int ,scalar_t__*) ;
 int mz_stream_mem_open (int ,int *,int ) ;
 int mz_stream_mem_write (int ,int *,scalar_t__) ;
 int mz_stream_write (int ,int *,int) ;
 scalar_t__ mz_stream_write_uint16 (int ,int) ;
 scalar_t__ mz_zip_entry_close (int ) ;
 scalar_t__ mz_zip_entry_close_raw (int ,int ,int ) ;
 int mz_zip_entry_set_extrafield (int ,int const*,int ) ;
 scalar_t__ mz_zip_extrafield_write (int ,int ,int) ;
 scalar_t__ mz_zip_writer_entry_sign (void*,int *,int,int *,scalar_t__,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int32_t mz_zip_writer_entry_close(void *handle)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    int32_t err = MZ_OK;

    const uint8_t *extrafield = ((void*)0);
    int32_t extrafield_size = 0;
    int16_t field_length_hash = 0;
    uint8_t sha256[MZ_HASH_SHA256_SIZE];


    if (writer->sha256 != ((void*)0))
    {
        mz_crypt_sha_end(writer->sha256, sha256, sizeof(sha256));
        mz_crypt_sha_delete(&writer->sha256);


        mz_stream_mem_create(&writer->file_extra_stream);
        mz_stream_mem_open(writer->file_extra_stream, ((void*)0), MZ_OPEN_MODE_CREATE);


        field_length_hash = 4 + MZ_HASH_SHA256_SIZE;
        err = mz_zip_extrafield_write(writer->file_extra_stream, MZ_ZIP_EXTENSION_HASH, field_length_hash);
        if (err == MZ_OK)
            err = mz_stream_write_uint16(writer->file_extra_stream, MZ_HASH_SHA256);
        if (err == MZ_OK)
            err = mz_stream_write_uint16(writer->file_extra_stream, MZ_HASH_SHA256_SIZE);
        if (err == MZ_OK)
        {
            if (mz_stream_write(writer->file_extra_stream, sha256, sizeof(sha256)) != MZ_HASH_SHA256_SIZE)
                err = MZ_WRITE_ERROR;
        }
        if ((writer->file_info.extrafield != ((void*)0)) && (writer->file_info.extrafield_size > 0))
            mz_stream_mem_write(writer->file_extra_stream, writer->file_info.extrafield,
                writer->file_info.extrafield_size);


        mz_stream_mem_get_buffer(writer->file_extra_stream, (const void **)&extrafield);
        mz_stream_mem_get_buffer_length(writer->file_extra_stream, &extrafield_size);

        mz_zip_entry_set_extrafield(writer->zip_handle, extrafield, (uint16_t)extrafield_size);
    }


    if (err == MZ_OK)
    {
        if (writer->raw)
            err = mz_zip_entry_close_raw(writer->zip_handle, writer->file_info.uncompressed_size,
                writer->file_info.crc);
        else
            err = mz_zip_entry_close(writer->zip_handle);
    }

    return err;
}
